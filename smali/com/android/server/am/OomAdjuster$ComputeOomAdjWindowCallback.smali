.class final Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
.super Ljava/lang/Object;
.source "OomAdjuster.java"

# interfaces
.implements Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OomAdjuster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ComputeOomAdjWindowCallback"
.end annotation


# instance fields
.field adj:I

.field app:Lcom/android/server/am/ProcessRecord;

.field appUid:I

.field foregroundActivities:Z

.field logUid:I

.field procState:I

.field processStateCurTop:I

.field schedGroup:I

.field final synthetic this$0:Lcom/android/server/am/OomAdjuster;


# direct methods
.method constructor <init>(Lcom/android/server/am/OomAdjuster;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OomAdjuster;

    .line 1203
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method initialize(Lcom/android/server/am/ProcessRecord;IZIIIII)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "adj"    # I
    .param p3, "foregroundActivities"    # Z
    .param p4, "procState"    # I
    .param p5, "schedGroup"    # I
    .param p6, "appUid"    # I
    .param p7, "logUid"    # I
    .param p8, "processStateCurTop"    # I

    .line 1217
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    .line 1218
    iput p2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 1219
    iput-boolean p3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 1220
    iput p4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 1221
    iput p5, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 1222
    iput p6, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    .line 1223
    iput p7, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    .line 1224
    iput p8, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    .line 1225
    return-void
.end method

.method public onOtherActivity()V
    .locals 3

    .line 1312
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    .line 1313
    iput v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 1314
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    const-string v1, "cch-act"

    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1315
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v1, :cond_1

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise procstate to cached activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    :cond_1
    return-void
.end method

.method public onPausedActivity()V
    .locals 5

    .line 1255
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "pause-activity"

    const/16 v3, 0xc8

    if-le v0, v3, :cond_1

    .line 1256
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 1257
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1258
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v3, :cond_1

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to pause-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    :cond_1
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    if-le v0, v3, :cond_3

    .line 1263
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 1264
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1265
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v2, :cond_3

    .line 1266
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to pause-activity (top): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    :cond_3
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 1271
    iput v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 1273
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1274
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 1275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 1276
    return-void
.end method

.method public onStoppingActivity(Z)V
    .locals 5
    .param p1, "finishing"    # Z

    .line 1280
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "stop-activity"

    const/16 v3, 0xc8

    if-le v0, v3, :cond_1

    .line 1281
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 1282
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1283
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v3, :cond_1

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to stop-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    :cond_1
    if-nez p1, :cond_3

    .line 1296
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    const/16 v3, 0xf

    if-le v0, v3, :cond_3

    .line 1297
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 1298
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1299
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v2, :cond_3

    .line 1300
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to stop-activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1306
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 1307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 1308
    return-void
.end method

.method public onVisibleActivity()V
    .locals 5

    .line 1230
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "vis-activity"

    const/16 v3, 0x64

    if-le v0, v3, :cond_1

    .line 1231
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 1232
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1233
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v3, :cond_1

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to vis-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    :cond_1
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    if-le v0, v3, :cond_3

    .line 1238
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 1239
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1240
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v2, :cond_3

    .line 1241
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to vis-activity (top): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :cond_3
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 1246
    iput v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 1248
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1249
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 1250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 1251
    return-void
.end method
