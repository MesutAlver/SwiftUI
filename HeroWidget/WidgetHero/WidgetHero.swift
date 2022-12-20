//
//  WidgetHero.swift
//  WidgetHero
//
//  Created by mesut alver on 17.12.2022.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    
    @AppStorage("hero",store: UserDefaults(suiteName: "group.mesutalver.HeroWidget"))
    var heroData : Data = Data()
    
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent(), hero: Superhero(image: "spiderman", name: "Spider-man", realName: "Peter Parker"))
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        if let hero = try? JSONDecoder().decode(Superhero.self, from: heroData) {
            let entry = SimpleEntry(date: Date(), configuration: configuration, hero: hero)
            completion(entry)
        }
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        
        if let hero = try? JSONDecoder().decode(Superhero.self, from: heroData) {
            let entry = SimpleEntry(date: Date(), configuration: configuration, hero: hero)
            let timeline = Timeline(entries: [entry], policy: .never)
            completion(timeline)
                }
            }
        
        }

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
    let hero : Superhero
}

struct WidgetHeroEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        CircleImageView(image: Image(entry.hero.image))
    }
}


struct WidgetHero: Widget {
    let kind: String = "WidgetHero"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            WidgetHeroEntryView(entry: entry)
        }
        .configurationDisplayName("Widget Hero")
        .description("Hero Widget!!")
    }
}
