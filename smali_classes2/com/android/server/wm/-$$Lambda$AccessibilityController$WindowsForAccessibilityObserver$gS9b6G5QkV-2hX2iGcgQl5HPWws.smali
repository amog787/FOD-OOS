.class public final synthetic Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$gS9b6G5QkV-2hX2iGcgQl5HPWws;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$gS9b6G5QkV-2hX2iGcgQl5HPWws;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$gS9b6G5QkV-2hX2iGcgQl5HPWws;->f$0:Ljava/util/List;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->lambda$populateVisibleWindowsOnScreenLocked$1(Ljava/util/List;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
