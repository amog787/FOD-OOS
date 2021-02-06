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

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    .line 558
    return-void
.end method


# virtual methods
.method public inputSourceValid()Z
    .locals 1

    .line 581
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

    .line 588
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    .line 589
    return-void
.end method

.method public shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 611
    const/4 v0, 0x0

    return v0
.end method

.method public shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public shouldProcessScroll()Z
    .locals 1

    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public updateInputSource(I)Z
    .locals 1
    .param p1, "source"    # I

    .line 568
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    if-ne v0, p1, :cond_0

    .line 569
    const/4 v0, 0x0

    return v0

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 573
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    .line 574
    const/4 v0, 0x1

    return v0
.end method
