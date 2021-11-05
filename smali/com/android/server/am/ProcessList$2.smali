.class Lcom/android/server/am/ProcessList$2;
.super Ljava/lang/Object;
.source "ProcessList.java"

# interfaces
.implements Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessList;->init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;Lcom/android/server/compat/PlatformCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ProcessList;

    .line 811
    iput-object p1, p0, Lcom/android/server/am/ProcessList$2;->this$0:Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUnsolicitedMessage(Ljava/nio/ByteBuffer;I)Z
    .locals 4
    .param p1, "dataReceived"    # Ljava/nio/ByteBuffer;
    .param p2, "receivedLen"    # I

    .line 838
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    .line 839
    return v1

    .line 841
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 850
    return v1

    .line 843
    :cond_1
    const/16 v2, 0xc

    if-eq p2, v2, :cond_2

    .line 844
    return v1

    .line 846
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ProcessList$2;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 847
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 846
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteLmkdProcKilled(II)V

    .line 848
    const/4 v0, 0x1

    return v0
.end method

.method public isReplyExpected(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z
    .locals 3
    .param p1, "replyBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "dataReceived"    # Ljava/nio/ByteBuffer;
    .param p3, "receivedLen"    # I

    .line 831
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    .line 832
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 831
    :goto_0
    return v1
.end method

.method public onConnect(Ljava/io/OutputStream;)Z
    .locals 2
    .param p1, "ostream"    # Ljava/io/OutputStream;

    .line 814
    const-string v0, "ActivityManager"

    const-string v1, "Connection with lmkd established"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p0, Lcom/android/server/am/ProcessList$2;->this$0:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessList;->onLmkdConnect(Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public onDisconnect()V
    .locals 4

    .line 820
    const-string v0, "ActivityManager"

    const-string v1, "Lost connection to lmkd"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    sget-object v1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v2, 0xfa1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 824
    return-void
.end method
