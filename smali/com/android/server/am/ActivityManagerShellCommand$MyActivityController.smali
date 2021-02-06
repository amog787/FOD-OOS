.class final Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;
.super Landroid/app/IActivityController$Stub;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MyActivityController"
.end annotation


# static fields
.field static final RESULT_ANR_DIALOG:I = 0x0

.field static final RESULT_ANR_KILL:I = 0x1

.field static final RESULT_ANR_WAIT:I = 0x2

.field static final RESULT_CRASH_DIALOG:I = 0x0

.field static final RESULT_CRASH_KILL:I = 0x1

.field static final RESULT_DEFAULT:I = 0x0

.field static final RESULT_EARLY_ANR_CONTINUE:I = 0x0

.field static final RESULT_EARLY_ANR_KILL:I = 0x1

.field static final STATE_ANR:I = 0x3

.field static final STATE_CRASHED:I = 0x1

.field static final STATE_EARLY_ANR:I = 0x2

.field static final STATE_NORMAL:I


# instance fields
.field final mGdbPort:Ljava/lang/String;

.field mGdbProcess:Ljava/lang/Process;

.field mGdbThread:Ljava/lang/Thread;

.field mGotGdbPrint:Z

.field final mInput:Ljava/io/InputStream;

.field final mInterface:Landroid/app/IActivityManager;

.field final mMonkey:Z

.field final mPw:Ljava/io/PrintWriter;

.field mResult:I

.field mState:I


# direct methods
.method constructor <init>(Landroid/app/IActivityManager;Ljava/io/PrintWriter;Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iam"    # Landroid/app/IActivityManager;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "gdbPort"    # Ljava/lang/String;
    .param p5, "monkey"    # Z

    .line 1207
    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    .line 1208
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Landroid/app/IActivityManager;

    .line 1209
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    .line 1210
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInput:Ljava/io/InputStream;

    .line 1211
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    .line 1212
    iput-boolean p5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    .line 1213
    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1217
    monitor-enter p0

    .line 1218
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Activity resuming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1219
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1220
    monitor-exit p0

    .line 1221
    const/4 v0, 0x1

    return v0

    .line 1220
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 1226
    monitor-enter p0

    .line 1227
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Activity starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1229
    monitor-exit p0

    .line 1230
    const/4 v0, 0x1

    return v0

    .line 1229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "timeMillis"    # J
    .param p7, "stackTrace"    # Ljava/lang/String;

    .line 1236
    monitor-enter p0

    .line 1237
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "** ERROR: PROCESS CRASHED"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1238
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1240
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shortMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "longMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v1, "stack:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1246
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1247
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->waitControllerLocked(II)I

    move-result v1

    .line 1248
    .local v1, "result":I
    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    monitor-exit p0

    return v0

    .line 1249
    .end local v1    # "result":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "annotation"    # Ljava/lang/String;

    .line 1254
    monitor-enter p0

    .line 1255
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "** ERROR: EARLY PROCESS NOT RESPONDING"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1256
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1257
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1258
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "annotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1259
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1260
    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->waitControllerLocked(II)I

    move-result v0

    .line 1261
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 1262
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1263
    .end local v0    # "result":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processStats"    # Ljava/lang/String;

    .line 1268
    monitor-enter p0

    .line 1269
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "** ERROR: PROCESS NOT RESPONDING"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v1, "processStats:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1273
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1274
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1275
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1276
    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->waitControllerLocked(II)I

    move-result v0

    .line 1277
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 1278
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    monitor-exit p0

    return v1

    .line 1279
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1280
    .end local v0    # "result":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method killGdbLocked()V
    .locals 3

    .line 1296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGotGdbPrint:Z

    .line 1297
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v2, "Stopping gdbserver"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1299
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1300
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 1301
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 1304
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1305
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    .line 1307
    :cond_1
    return-void
.end method

.method printMessageForState()V
    .locals 3

    .line 1395
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const-string v2, "(k)ill: immediately kill app"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1410
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Waiting after ANR...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1411
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(c)ontinue: show ANR dialog"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(w)ait: wait some more"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1405
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Waiting after early ANR...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(c)ontinue: standard ANR processing"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1408
    goto :goto_0

    .line 1400
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Waiting after crash...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(c)ontinue: show crash dialog"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    goto :goto_0

    .line 1397
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Monitoring activity manager...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1398
    nop

    .line 1416
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(q)uit: finish monitoring"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1417
    return-void
.end method

.method resumeController(I)V
    .locals 1
    .param p1, "result"    # I

    .line 1387
    monitor-enter p0

    .line 1388
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    .line 1389
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mResult:I

    .line 1390
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1391
    monitor-exit p0

    .line 1392
    return-void

    .line 1391
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method run()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1421
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->printMessageForState()V

    .line 1422
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1424
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Landroid/app/IActivityManager;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    invoke-interface {v1, p0, v2}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 1425
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    .line 1427
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInput:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1428
    .local v2, "converter":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1431
    .local v3, "in":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_15

    .line 1432
    const/4 v4, 0x1

    .line 1433
    .local v4, "addNewline":Z
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_0

    .line 1434
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 1435
    :cond_0
    const-string/jumbo v6, "q"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    const-string/jumbo v6, "quit"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_9

    .line 1438
    :cond_1
    iget v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 1439
    const-string v6, "c"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "continue"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 1441
    :cond_2
    const-string/jumbo v6, "k"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "kill"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 1444
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1442
    :cond_4
    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto/16 :goto_8

    .line 1440
    :cond_5
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto/16 :goto_8

    .line 1446
    :cond_6
    iget v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-ne v6, v8, :cond_d

    .line 1447
    const-string v6, "c"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "continue"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    .line 1449
    :cond_7
    const-string/jumbo v6, "k"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "kill"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_4

    .line 1451
    :cond_8
    const-string/jumbo v6, "w"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v6, "wait"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_3

    .line 1454
    :cond_9
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 1452
    :cond_a
    :goto_3
    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_8

    .line 1450
    :cond_b
    :goto_4
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_8

    .line 1448
    :cond_c
    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_8

    .line 1456
    :cond_d
    iget v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    if-ne v6, v9, :cond_12

    .line 1457
    const-string v6, "c"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "continue"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_7

    .line 1459
    :cond_e
    const-string/jumbo v6, "k"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string/jumbo v6, "kill"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_6

    .line 1462
    :cond_f
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 1460
    :cond_10
    :goto_6
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_8

    .line 1458
    :cond_11
    :goto_7
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_8

    .line 1465
    :cond_12
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    :goto_8
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1469
    if-eqz v4, :cond_13

    .line 1470
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1472
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->printMessageForState()V

    .line 1473
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 1474
    monitor-exit p0

    .line 1475
    .end local v4    # "addNewline":Z
    goto/16 :goto_0

    .line 1474
    .restart local v4    # "addNewline":Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;
    :try_start_2
    throw v1

    .line 1436
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;
    :cond_14
    :goto_9
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1437
    goto :goto_a

    .line 1481
    .end local v2    # "converter":Ljava/io/InputStreamReader;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "addNewline":Z
    .end local v5    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v1

    goto :goto_b

    .line 1477
    :catch_0
    move-exception v1

    .line 1478
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1479
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1481
    .end local v1    # "e":Ljava/io/IOException;
    :cond_15
    :goto_a
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Landroid/app/IActivityManager;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 1482
    nop

    .line 1483
    return-void

    .line 1481
    :goto_b
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Landroid/app/IActivityManager;

    iget-boolean v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 1482
    throw v1
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 1285
    monitor-enter p0

    .line 1286
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "** ERROR: PROCESS NOT RESPONDING"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1289
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Allowing system to die."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1291
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 1292
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method waitControllerLocked(II)I
    .locals 5
    .param p1, "pid"    # I
    .param p2, "state"    # I

    .line 1310
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1311
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->killGdbLocked()V

    .line 1314
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting gdbserver on port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1315
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Do the following:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1316
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  adb forward tcp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tcp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1317
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  gdbclient app_process :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1320
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "gdbserver"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "--attach"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 1321
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1320
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    .line 1323
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    .line 1324
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1325
    .local v0, "converter":Ljava/io/InputStreamReader;
    new-instance v1, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;-><init>(Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;Ljava/io/InputStreamReader;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    .line 1355
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1359
    const-wide/16 v1, 0x1f4

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1361
    goto :goto_0

    .line 1360
    :catch_0
    move-exception v1

    .line 1367
    .end local v0    # "converter":Ljava/io/InputStreamReader;
    :goto_0
    goto :goto_1

    .line 1363
    :catch_1
    move-exception v0

    .line 1364
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure starting gdbserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1366
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->killGdbLocked()V

    .line 1369
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    iput p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    .line 1370
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->printMessageForState()V

    .line 1372
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1374
    :goto_2
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    if-eqz v0, :cond_1

    .line 1376
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1378
    :goto_3
    goto :goto_2

    .line 1377
    :catch_2
    move-exception v0

    goto :goto_3

    .line 1381
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->killGdbLocked()V

    .line 1383
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mResult:I

    return v0
.end method
