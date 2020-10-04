.class Lcom/android/server/power/ShutdownThread$6;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;JI[Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;

    .line 794
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    iput p4, p0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$6;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 796
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Landroid/util/TimingsTraceLog;

    move-result-object v0

    .line 799
    .local v0, "shutdownTimingsTraceLog":Landroid/util/TimingsTraceLog;
    nop

    .line 800
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 803
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    const-string v3, "RemoteException during radio shutdown"

    const/4 v4, 0x1

    const-string v5, "ShutdownThread"

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v2

    goto :goto_1

    .line 809
    :catch_0
    move-exception v6

    goto :goto_2

    .line 803
    :cond_1
    :goto_0
    move v6, v4

    .line 804
    .local v6, "radioOff":Z
    :goto_1
    if-nez v6, :cond_2

    .line 805
    const-string v7, "Turning off cellular radios..."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/power/ShutdownThread;->access$400(Ljava/lang/String;)V

    .line 807
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 810
    .local v6, "ex":Landroid/os/RemoteException;
    :goto_2
    invoke-static {v5, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 811
    const/4 v6, 0x1

    .local v6, "radioOff":Z
    goto :goto_4

    .line 812
    :cond_2
    :goto_3
    nop

    .line 814
    :goto_4
    const-string v7, "Waiting for Radio..."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-wide v7, p0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 817
    .local v7, "delay":J
    :goto_5
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_6

    .line 818
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$500()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 819
    iget v9, p0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    int-to-long v10, v9

    sub-long/2addr v10, v7

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    mul-double/2addr v10, v12

    int-to-double v12, v9

    div-double/2addr v10, v12

    double-to-int v9, v10

    .line 821
    .local v9, "status":I
    add-int/lit8 v9, v9, 0x6

    .line 822
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Lcom/android/server/power/ShutdownThread;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Lcom/android/server/power/ShutdownThread;->access$700(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 825
    .end local v9    # "status":I
    :cond_3
    if-nez v6, :cond_4

    .line 827
    :try_start_1
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    xor-int/2addr v9, v4

    move v6, v9

    .line 831
    goto :goto_6

    .line 828
    :catch_1
    move-exception v9

    .line 829
    .local v9, "ex":Landroid/os/RemoteException;
    invoke-static {v5, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 830
    const/4 v6, 0x1

    .line 832
    .end local v9    # "ex":Landroid/os/RemoteException;
    :goto_6
    if-eqz v6, :cond_4

    .line 833
    const-string v9, "Radio turned off."

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/power/ShutdownThread;->access$800(Ljava/lang/String;)V

    .line 835
    nop

    .line 836
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$900()Landroid/util/ArrayMap;

    move-result-object v9

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v11, "ShutdownRadio"

    invoke-virtual {v0, v11, v9, v10}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    .line 840
    :cond_4
    if-eqz v6, :cond_5

    .line 841
    const-string v3, "Radio shutdown complete."

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$6;->val$done:[Z

    aput-boolean v4, v3, v2

    .line 843
    goto :goto_7

    .line 845
    :cond_5
    const-wide/16 v9, 0x64

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 846
    iget-wide v9, p0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v7, v9, v11

    goto :goto_5

    .line 848
    :cond_6
    :goto_7
    return-void
.end method
