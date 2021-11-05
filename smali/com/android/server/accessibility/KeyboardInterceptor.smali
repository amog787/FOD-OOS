.class public Lcom/android/server/accessibility/KeyboardInterceptor;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "KeyboardInterceptor.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "KeyboardInterceptor"

.field private static final MESSAGE_PROCESS_QUEUED_EVENTS:I = 0x1


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

.field private mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

.field private final mHandler:Landroid/os/Handler;

.field private final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/policy/WindowManagerPolicy;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;

    .line 46
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 48
    iput-object p2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/policy/WindowManagerPolicy;Landroid/os/Handler;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 58
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 61
    iput-object p2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 62
    iput-object p3, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method private addEventToQueue(Landroid/view/KeyEvent;IJ)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "delay"    # J

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p3

    .line 98
    .local v0, "dispatchTime":J
    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-nez v2, :cond_0

    .line 99
    nop

    .line 100
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->obtain(Landroid/view/KeyEvent;IJ)Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iput-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 101
    invoke-direct {p0}, Lcom/android/server/accessibility/KeyboardInterceptor;->scheduleProcessQueuedEvents()V

    .line 102
    return-void

    .line 104
    :cond_0
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->obtain(Landroid/view/KeyEvent;IJ)Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    move-result-object v2

    .line 105
    .local v2, "holder":Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;
    iget-object v3, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iput-object v3, v2, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->next:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 106
    iget-object v3, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iput-object v2, v3, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->previous:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 107
    iput-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 108
    return-void
.end method

.method private getEventDelay(Landroid/view/KeyEvent;I)J
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 143
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 144
    .local v0, "keyCode":I
    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1

    .line 145
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    return-wide v1
.end method

.method private processQueuedEvents()V
    .locals 7

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 119
    .local v0, "currentTime":J
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-eqz v2, :cond_4

    iget-wide v2, v2, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_4

    .line 120
    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget-object v2, v2, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget v3, v3, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->policyFlags:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/KeyboardInterceptor;->getEventDelay(Landroid/view/KeyEvent;I)J

    move-result-wide v2

    .line 121
    .local v2, "eventDelay":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 123
    iget-object v4, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    add-long v5, v0, v2

    iput-wide v5, v4, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    .line 124
    return-void

    .line 127
    :cond_0
    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 128
    iget-object v4, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v5, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget-object v5, v5, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    iget-object v6, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget v6, v6, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->policyFlags:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    .line 130
    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 131
    .local v4, "eventToBeRecycled":Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;
    iget-object v5, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget-object v5, v5, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->previous:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iput-object v5, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 132
    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 133
    iput-object v6, v5, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->next:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 135
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->recycle()V

    .line 136
    iget-object v5, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-nez v5, :cond_3

    .line 137
    iput-object v6, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 139
    .end local v2    # "eventDelay":J
    .end local v4    # "eventToBeRecycled":Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;
    :cond_3
    goto :goto_0

    .line 140
    :cond_4
    return-void
.end method

.method private scheduleProcessQueuedEvents()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget-wide v1, v1, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const-string v0, "KeyboardInterceptor"

    const-string v1, "Failed to schedule key event"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 86
    const-string v0, "KeyboardInterceptor"

    const-string v1, "Unexpected message type"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    return v0

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/KeyboardInterceptor;->processQueuedEvents()V

    .line 90
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-eqz v0, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/android/server/accessibility/KeyboardInterceptor;->scheduleProcessQueuedEvents()V

    .line 93
    :cond_1
    return v1
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/KeyboardInterceptor;->getEventDelay(Landroid/view/KeyEvent;I)J

    move-result-wide v0

    .line 72
    .local v0, "eventDelay":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    .line 81
    return-void

    .line 76
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/accessibility/KeyboardInterceptor;->addEventToQueue(Landroid/view/KeyEvent;IJ)V

    .line 77
    return-void
.end method
