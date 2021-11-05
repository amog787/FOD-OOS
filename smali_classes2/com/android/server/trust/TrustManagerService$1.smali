.class Lcom/android/server/trust/TrustManagerService$1;
.super Landroid/app/trust/ITrustManager$Stub;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/trust/TrustManagerService;

    .line 1071
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/app/trust/ITrustManager$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService$1;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # Landroid/content/pm/UserInfo;
    .param p3, "x3"    # Z

    .line 1071
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/trust/TrustManagerService$1;->dumpUser(Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V

    return-void
.end method

.method private dumpBool(Z)Ljava/lang/String;
    .locals 1
    .param p1, "b"    # Z

    .line 1231
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method private dumpHex(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dumpUser(Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V
    .locals 9
    .param p1, "fout"    # Ljava/io/PrintWriter;
    .param p2, "user"    # Landroid/content/pm/UserInfo;
    .param p3, "isCurrent"    # Z

    .line 1184
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 1185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p2, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1184
    const-string v1, " User \"%s\" (id=%d, flags=%#x)"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1186
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1187
    const-string v0, "(managed profile)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    const-string v0, "   disabled because switching to this user is not possible."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    return-void

    .line 1191
    :cond_0
    if-eqz p3, :cond_1

    .line 1192
    const-string v0, " (current)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1194
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": trusted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/server/trust/TrustManagerService;->access$1000(Lcom/android/server/trust/TrustManagerService;I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", trustManaged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/server/trust/TrustManagerService;->access$1100(Lcom/android/server/trust/TrustManagerService;I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", deviceLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", strongAuthRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 1198
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->access$1200(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    move-result-object v1

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v1

    .line 1197
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1200
    const-string v0, "   Enabled agents:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1201
    const/4 v0, 0x0

    .line 1202
    .local v0, "duplicateSimpleNames":Z
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1203
    .local v1, "simpleNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$1300(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1204
    .local v3, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v4, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget v5, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 1205
    :cond_2
    iget-object v4, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v4}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v4

    .line 1206
    .local v4, "trusted":Z
    const-string v5, "    "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "     bound="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v6}, Lcom/android/server/trust/TrustAgentWrapper;->isBound()Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", connected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v6}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", managingTrust="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v6}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", trusted="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1212
    if-eqz v4, :cond_3

    .line 1213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      message=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v6}, Lcom/android/server/trust/TrustAgentWrapper;->getMessage()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1215
    :cond_3
    iget-object v5, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1216
    iget-object v5, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 1217
    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->getScheduledRestartUptimeMillis()J

    move-result-wide v5

    .line 1218
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 1216
    invoke-static {v5, v6}, Lcom/android/server/trust/TrustArchive;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    .line 1219
    .local v5, "restartTime":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      restartScheduledAt="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1221
    .end local v5    # "restartTime":Ljava/lang/String;
    :cond_4
    iget-object v5, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-static {v5}, Lcom/android/server/trust/TrustArchive;->getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1222
    const/4 v0, 0x1

    .line 1224
    .end local v3    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .end local v4    # "trusted":Z
    :cond_5
    goto/16 :goto_0

    .line 1225
    :cond_6
    const-string v2, "   Events:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1226
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    const/16 v5, 0x32

    iget v6, p2, Landroid/content/pm/UserInfo;->id:I

    const-string v7, "    "

    move-object v4, p1

    move v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/trust/TrustArchive;->dump(Ljava/io/PrintWriter;IILjava/lang/String;Z)V

    .line 1227
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1228
    return-void
.end method

.method private enforceListenerPermission()V
    .locals 3

    .line 1156
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$600(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TRUST_LISTENER"

    const-string v2, "register trust listener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    return-void
.end method

.method private enforceReportPermission()V
    .locals 3

    .line 1151
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$600(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "reporting trust events"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    return-void
.end method

.method static synthetic lambda$reportKeyguardShowingChanged$0()V
    .locals 0

    .line 1103
    return-void
.end method


# virtual methods
.method public clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 4
    .param p1, "biometricSource"    # Landroid/hardware/biometrics/BiometricSourceType;

    .line 1294
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1295
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$1600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    monitor-enter v0

    .line 1296
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->access$1600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1297
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1298
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1299
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1300
    return-void

    .line 1297
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1162
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$600(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "TrustManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1164
    const-string v0, "disabled because the system is in safe mode."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1165
    return-void

    .line 1167
    :cond_1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$700(Lcom/android/server/trust/TrustManagerService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1168
    const-string v0, "disabled because the third-party apps can\'t run yet."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1169
    return-void

    .line 1171
    :cond_2
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$800(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 1172
    .local v0, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/trust/TrustManagerService$1$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/trust/TrustManagerService$1$1;-><init>(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Ljava/util/List;)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1181
    return-void
.end method

.method public isDeviceLocked(I)Z
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1120
    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "isDeviceLocked"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1125
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1126
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2, p1}, Lcom/android/server/trust/TrustManagerService;->access$500(Lcom/android/server/trust/TrustManagerService;I)I

    move-result v2

    move p1, v2

    .line 1128
    :cond_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1128
    return v2

    .line 1130
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1131
    throw v2
.end method

.method public isDeviceSecure(I)Z
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1136
    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "isDeviceSecure"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1141
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1142
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2, p1}, Lcom/android/server/trust/TrustManagerService;->access$500(Lcom/android/server/trust/TrustManagerService;I)I

    move-result v2

    move p1, v2

    .line 1144
    :cond_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1144
    return v2

    .line 1146
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1147
    throw v2
.end method

.method public isTrustUsuallyManaged(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 1274
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$600(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TRUST_LISTENER"

    const-string v2, "query trust state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->access$1500(Lcom/android/server/trust/TrustManagerService;I)Z

    move-result v0

    return v0
.end method

.method public registerTrustListener(Landroid/app/trust/ITrustListener;)V
    .locals 2
    .param p1, "trustListener"    # Landroid/app/trust/ITrustListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1108
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceListenerPermission()V

    .line 1109
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1110
    return-void
.end method

.method public reportEnabledTrustAgentsChanged(I)V
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1088
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1090
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1091
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1092
    return-void
.end method

.method public reportKeyguardShowingChanged()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1096
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1098
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1099
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1103
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/trust/-$$Lambda$TrustManagerService$1$98HKBkg-C1PLlz_Q1vJz1OJtw4c;->INSTANCE:Lcom/android/server/trust/-$$Lambda$TrustManagerService$1$98HKBkg-C1PLlz_Q1vJz1OJtw4c;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1104
    return-void
.end method

.method public reportUnlockAttempt(ZI)V
    .locals 2
    .param p1, "authenticated"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1074
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1075
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1076
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1077
    return-void
.end method

.method public reportUnlockLockout(II)V
    .locals 2
    .param p1, "timeoutMs"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1081
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1082
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1083
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1084
    return-void
.end method

.method public setDeviceLockedForUser(IZ)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "locked"    # Z

    .line 1244
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1247
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 1248
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1249
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$1400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1250
    :try_start_1
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->access$1400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1251
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1253
    :try_start_2
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/security/KeyStore;->onUserLockedStateChanged(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1255
    if-eqz p2, :cond_0

    .line 1257
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->notifyLockedProfile(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1259
    goto :goto_0

    .line 1258
    :catch_0
    move-exception v2

    .line 1261
    :cond_0
    :goto_0
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1262
    .local v2, "lockIntent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1263
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1264
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->access$600(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v5, "android.permission.TRUST_LISTENER"

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 1251
    .end local v2    # "lockIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/trust/TrustManagerService$1;
    .end local p1    # "userId":I
    .end local p2    # "locked":Z
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1268
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/trust/TrustManagerService$1;
    .restart local p1    # "userId":I
    .restart local p2    # "locked":Z
    :cond_1
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1269
    nop

    .line 1270
    return-void

    .line 1268
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1269
    throw v2
.end method

.method public unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "biometricSource"    # Landroid/hardware/biometrics/BiometricSourceType;

    .line 1281
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1282
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$1600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    monitor-enter v0

    .line 1283
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->access$1600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1284
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$1700(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->getTrustAgentsExtendUnlock()Z

    move-result v0

    .line 1288
    .local v0, "updateTrustOnUnlock":I
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1289
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1290
    return-void

    .line 1284
    .end local v0    # "updateTrustOnUnlock":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterTrustListener(Landroid/app/trust/ITrustListener;)V
    .locals 2
    .param p1, "trustListener"    # Landroid/app/trust/ITrustListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1114
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceListenerPermission()V

    .line 1115
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1116
    return-void
.end method
