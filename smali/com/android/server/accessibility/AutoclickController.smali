.class public Lcom/android/server/accessibility/AutoclickController;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "AutoclickController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AutoclickController$ClickScheduler;,
        Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

.field private mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

.field private final mContext:Landroid/content/Context;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/android/server/accessibility/AutoclickController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/AutoclickController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 66
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController;->mContext:Landroid/content/Context;

    .line 68
    iput p2, p0, Lcom/android/server/accessibility/AutoclickController;->mUserId:I

    .line 69
    return-void
.end method

.method static synthetic access$001(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AutoclickController;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # I

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AutoclickController;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # I

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private handleMouseMotion(Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    goto :goto_0

    .line 136
    :cond_0
    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->update(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    .line 132
    nop

    .line 140
    :goto_0
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 1
    .param p1, "inputSource"    # I

    .line 105
    const/16 v0, 0x2002

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    .line 109
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->clearEvents(I)V

    .line 110
    return-void
.end method

.method public bridge synthetic getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->stop()V

    .line 116
    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    .line 120
    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 122
    :cond_1
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 92
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->updateMetaState(I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    .line 100
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 101
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 73
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    const/16 v2, 0x258

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;-><init>(Lcom/android/server/accessibility/AutoclickController;Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 78
    new-instance v1, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    iget v2, p0, Lcom/android/server/accessibility/AutoclickController;->mUserId:I

    invoke-direct {v1, v2, v0}, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;-><init>(ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    .line 79
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->start(Landroid/content/ContentResolver;Lcom/android/server/accessibility/AutoclickController$ClickScheduler;)V

    .line 82
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/AutoclickController;->handleMouseMotion(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    .line 87
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 88
    return-void
.end method

.method public bridge synthetic setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    return-void
.end method
