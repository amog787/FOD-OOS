.class public final Lcom/android/server/NetworkScoreService$ServiceHandler;
.super Landroid/os/Handler;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_RECOMMENDATIONS_PACKAGE_CHANGED:I = 0x1

.field public static final MSG_RECOMMENDATION_ENABLED_SETTING_CHANGED:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method public constructor <init>(Lcom/android/server/NetworkScoreService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkScoreService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1043
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$ServiceHandler;->this$0:Lcom/android/server/NetworkScoreService;

    .line 1044
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1045
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1049
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1050
    .local v0, "what":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkScoreService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1053
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$ServiceHandler;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v1}, Lcom/android/server/NetworkScoreService;->access$100(Lcom/android/server/NetworkScoreService;)V

    .line 1054
    nop

    .line 1059
    :goto_0
    return-void
.end method
