Creating an interface for the ProFitTrackerApp training application based on a layout from Sketch using 100% UIKit. While writing the application, specific solutions were demonstrated without the need to use third-party frameworks, only using native tools. These skills will come in handy as frameworks may no longer be supported or may contain critical vulnerabilities for the program.

____

# ProFitTracker Layout App

## Описание
Создание интерфейса для приложения тренировок ProFitTrackerApp, основанного на макете из Sketch с небольшими изменениями в дизайне. При разработке был использован 100% UIKit без привлечения сторонних фреймворков. Этот подход обеспечивает устойчивость приложения и избегает зависимости от сторонних библиотек, что важно для долгосрочной поддержки.

![Review](https://github.com/Ka4aH4uk/pro-fit-tracker-layout-app/blob/main/Content/screenshotReview.png)

## Технологии
Основной используемый стек в этом проекте:

- UIKit: Основной инструмент для построения интерфейса.
- UITabBarController, UINavigationController: Использованы для навигации между разделами и создания иерархии контроллеров.
- UICollectionView, UICollectionReusableView, UICollectionViewCell: Использованы для создания гибкого и настраиваемого интерфейса списка тренировок и их группировки по дням.
- UIBezierPath: Инструмент для создания таймера и графиков.

## Кастомные элементы
Разработано несколько кастомных элементов интерфейса, таких как:
- OverviewNavBar: Специально разработанный навигационный бар для обзора тренировок. Включает в себя заголовок, кнопки для просмотра всех тренировок и добавления новой, а также планировщик недели.
- Таймер обратного отсчета: Создан специальный таймер, имеющий уникальный внешний вид, отличный от традиционного таймера. Это делает его более привлекательным и удобным для использования в контексте тренировок.
- Графики: Приложение включает в себя линейный и столбчатый графики для иллюстрации прогресса тренировки и статистики. Реализованы с использованием стандартных компонентов UIKit.

## Дизайн из Sketch
Дизайн этого приложения основан на макете Sketch, который можно найти по [этой ссылке](https://www.sketchappsources.com/free-source/4298-workout-tracking-app-sketch-freebie-resource.html). 

____

**Демонстрация работы приложения:**

https://github.com/Ka4aH4uk/pro-fit-tracker-layout-app/assets/110671395/6966f8e3-0e50-4024-b052-d4abf21f3cdb
