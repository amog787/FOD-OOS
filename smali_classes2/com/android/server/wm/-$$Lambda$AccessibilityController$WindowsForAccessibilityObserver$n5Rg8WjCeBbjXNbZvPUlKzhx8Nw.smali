.class public final synthetic Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$n5Rg8WjCeBbjXNbZvPUlKzhx8Nw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$n5Rg8WjCeBbjXNbZvPUlKzhx8Nw;->f$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$n5Rg8WjCeBbjXNbZvPUlKzhx8Nw;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$n5Rg8WjCeBbjXNbZvPUlKzhx8Nw;->f$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$n5Rg8WjCeBbjXNbZvPUlKzhx8Nw;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->lambda$populateVisibleWindowsOnScreenLocked$2$AccessibilityController$WindowsForAccessibilityObserver(Ljava/util/List;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
