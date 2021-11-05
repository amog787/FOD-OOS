.class final Lcom/android/server/power/AttentionDetector$UserSwitchObserver;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "AttentionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/AttentionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/AttentionDetector;


# direct methods
.method private constructor <init>(Lcom/android/server/power/AttentionDetector;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/AttentionDetector;Lcom/android/server/power/AttentionDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/AttentionDetector;
    .param p2, "x1"    # Lcom/android/server/power/AttentionDetector$1;

    .line 387
    invoke-direct {p0, p1}, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;-><init>(Lcom/android/server/power/AttentionDetector;)V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .locals 2
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {v0}, Lcom/android/server/power/AttentionDetector;->access$600(Lcom/android/server/power/AttentionDetector;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/AttentionDetector;->updateEnabledFromSettings(Landroid/content/Context;)V

    .line 391
    return-void
.end method
