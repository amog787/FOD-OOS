.class Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.super Ljava/lang/Object;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventStreamState"
.end annotation


# instance fields
.field private mSource:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    .line 528
    return-void
.end method


# virtual methods
.method public inputSourceValid()Z
    .locals 1

    .line 551
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    .line 558
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    .line 559
    return-void
.end method

.method public shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 573
    const/4 v0, 0x0

    return v0
.end method

.method public shouldProcessScroll()Z
    .locals 1

    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public updateInputSource(I)Z
    .locals 1
    .param p1, "source"    # I

    .line 538
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    if-ne v0, p1, :cond_0

    .line 539
    const/4 v0, 0x0

    return v0

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 543
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    .line 544
    const/4 v0, 0x1

    return v0
.end method
