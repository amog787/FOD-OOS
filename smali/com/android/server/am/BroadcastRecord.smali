.class final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "BroadcastRecord.java"


# static fields
.field static final APP_RECEIVE:I = 0x1

.field static final CALL_DONE_RECEIVE:I = 0x3

.field static final CALL_IN_RECEIVE:I = 0x2

.field static final DELIVERY_DELIVERED:I = 0x1

.field static final DELIVERY_PENDING:I = 0x0

.field static final DELIVERY_SKIPPED:I = 0x2

.field static final DELIVERY_TIMEOUT:I = 0x3

.field static final IDLE:I = 0x0

.field static final WAITING_SERVICES:I = 0x4

.field static sNextToken:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final allowBackgroundActivityStarts:Z

.field anrCount:I

.field final appOp:I

.field final callerApp:Lcom/android/server/am/ProcessRecord;

.field final callerFeatureId:Ljava/lang/String;

.field final callerInstantApp:Z

.field final callerPackage:Ljava/lang/String;

.field final callingPid:I

.field final callingUid:I

.field curApp:Lcom/android/server/am/ProcessRecord;

.field curComponent:Landroid/content/ComponentName;

.field curFilter:Lcom/android/server/am/BroadcastFilter;

.field curReceiver:Landroid/content/pm/ActivityInfo;

.field deferred:Z

.field final delivery:[I

.field dispatchClockTime:J

.field dispatchTime:J

.field final duration:[J

.field enqueueClockTime:J

.field finishTime:J

.field final initialSticky:Z

.field final intent:Landroid/content/Intent;

.field mHasSpilt:Z

.field manifestCount:I

.field manifestSkipCount:I

.field nextReceiver:I

.field final options:Landroid/app/BroadcastOptions;

.field final ordered:Z

.field queue:Lcom/android/server/am/BroadcastQueue;

.field receiver:Landroid/os/IBinder;

.field receiverTime:J

.field final receivers:Ljava/util/List;

.field final requiredPermissions:[Ljava/lang/String;

.field final resolvedType:Ljava/lang/String;

.field resultAbort:Z

.field resultCode:I

.field resultData:Ljava/lang/String;

.field resultExtras:Landroid/os/Bundle;

.field resultTo:Landroid/content/IIntentReceiver;

.field splitCount:I

.field splitToken:I

.field state:I

.field final sticky:Z

.field final targetComp:Landroid/content/ComponentName;

.field timeoutExempt:Z

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/am/BroadcastRecord;->sNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIZZ)V
    .locals 16
    .param p1, "_queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "_intent"    # Landroid/content/Intent;
    .param p3, "_callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "_callerPackage"    # Ljava/lang/String;
    .param p5, "_callerFeatureId"    # Ljava/lang/String;
    .param p6, "_callingPid"    # I
    .param p7, "_callingUid"    # I
    .param p8, "_callerInstantApp"    # Z
    .param p9, "_resolvedType"    # Ljava/lang/String;
    .param p10, "_requiredPermissions"    # [Ljava/lang/String;
    .param p11, "_appOp"    # I
    .param p12, "_options"    # Landroid/app/BroadcastOptions;
    .param p13, "_receivers"    # Ljava/util/List;
    .param p14, "_resultTo"    # Landroid/content/IIntentReceiver;
    .param p15, "_resultCode"    # I
    .param p16, "_resultData"    # Ljava/lang/String;
    .param p17, "_resultExtras"    # Landroid/os/Bundle;
    .param p18, "_serialized"    # Z
    .param p19, "_sticky"    # Z
    .param p20, "_initialSticky"    # Z
    .param p21, "_userId"    # I
    .param p22, "_allowBackgroundActivityStarts"    # Z
    .param p23, "_timeoutExempt"    # Z

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p13

    invoke-direct/range {p0 .. p0}, Landroid/os/Binder;-><init>()V

    .line 117
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->mHasSpilt:Z

    .line 246
    if-eqz v1, :cond_1

    .line 249
    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 250
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 252
    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 253
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 254
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    .line 255
    move/from16 v8, p6

    iput v8, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 256
    move/from16 v9, p7

    iput v9, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 257
    move/from16 v10, p8

    iput-boolean v10, v0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    .line 258
    move-object/from16 v11, p9

    iput-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    .line 259
    move-object/from16 v12, p10

    iput-object v12, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 260
    move/from16 v13, p11

    iput v13, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 261
    move-object/from16 v14, p12

    iput-object v14, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 262
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 263
    if-eqz v2, :cond_0

    invoke-interface/range {p13 .. p13}, Ljava/util/List;->size()I

    move-result v15

    goto :goto_0

    :cond_0
    move v15, v3

    :goto_0
    new-array v15, v15, [I

    iput-object v15, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 264
    array-length v15, v15

    new-array v15, v15, [J

    iput-object v15, v0, Lcom/android/server/am/BroadcastRecord;->duration:[J

    .line 265
    move-object/from16 v15, p14

    iput-object v15, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 266
    move/from16 v3, p15

    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 267
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 268
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 269
    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 270
    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 271
    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 272
    move/from16 v1, p21

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 273
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 274
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 275
    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    .line 276
    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    .line 277
    return-void

    .line 247
    :cond_1
    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p14

    move/from16 v3, p15

    move/from16 v1, p23

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t construct with a null intent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V
    .locals 2
    .param p1, "from"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "newIntent"    # Landroid/content/Intent;

    .line 283
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->mHasSpilt:Z

    .line 284
    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 285
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 287
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 288
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 289
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    .line 290
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 291
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 292
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    .line 293
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 294
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 295
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 296
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 297
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    .line 298
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 299
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 300
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 301
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 302
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 303
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->duration:[J

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->duration:[J

    .line 304
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 305
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 306
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 307
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 308
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 309
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 310
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 311
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 312
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 313
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 314
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 315
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 316
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 317
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 318
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    .line 319
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    .line 320
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 321
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    .line 322
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    .line 323
    return-void
.end method


# virtual methods
.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 381
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 382
    return v1

    .line 385
    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x1

    if-ne p3, v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 386
    .local v3, "cleanupAllUsers":Z
    :goto_0
    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v4, v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 387
    .local v0, "sendToAllUsers":Z
    :goto_1
    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-eq v4, p3, :cond_3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    .line 388
    return v1

    .line 391
    :cond_3
    const/4 v4, 0x0

    .line 393
    .local v4, "didSomething":Z
    iget-object v5, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_a

    .line 394
    iget-object v6, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 395
    .local v6, "o":Ljava/lang/Object;
    instance-of v7, v6, Landroid/content/pm/ResolveInfo;

    if-nez v7, :cond_4

    .line 396
    goto :goto_5

    .line 398
    :cond_4
    move-object v7, v6

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 400
    .local v7, "info":Landroid/content/pm/ActivityInfo;
    if-eqz p1, :cond_6

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 401
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz p2, :cond_6

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 402
    invoke-interface {p2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    move v8, v1

    goto :goto_4

    :cond_6
    :goto_3
    move v8, v2

    .line 403
    .local v8, "sameComponent":Z
    :goto_4
    if-eqz v8, :cond_9

    if-nez v3, :cond_7

    iget-object v9, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 404
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v9, p3, :cond_9

    .line 405
    :cond_7
    if-nez p4, :cond_8

    .line 406
    return v2

    .line 408
    :cond_8
    const/4 v4, 0x1

    .line 409
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 410
    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v5, v9, :cond_9

    .line 411
    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 393
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    .end local v8    # "sameComponent":Z
    :cond_9
    :goto_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 415
    .end local v5    # "i":I
    .end local v6    # "o":Ljava/lang/Object;
    :cond_a
    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 417
    return v4
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "sdf"    # Ljava/text/SimpleDateFormat;

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 125
    .local v3, "now":J
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, " to user "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 126
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 128
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  targetComp: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    :cond_0
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 131
    .local v5, "bundle":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    .line 132
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  extras: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "caller="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "null"

    :goto_0
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    const-string v7, " pid="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 137
    const-string v7, " uid="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 138
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    const/4 v8, -0x1

    if-eqz v7, :cond_3

    array-length v7, v7

    if-gtz v7, :cond_4

    :cond_3
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v7, v8, :cond_5

    .line 140
    :cond_4
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "requiredPermissions="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    const-string v7, "  appOp="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 144
    :cond_5
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v7, :cond_6

    .line 145
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "options="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v7}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 147
    :cond_6
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "enqueueClockTime="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    new-instance v7, Ljava/util/Date;

    iget-wide v9, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    invoke-direct {v7, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    const-string v7, " dispatchClockTime="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    new-instance v7, Ljava/util/Date;

    iget-wide v9, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    invoke-direct {v7, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "dispatchTime="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    iget-wide v9, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {v9, v10, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 153
    const-string v7, " ("

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    iget-wide v9, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iget-wide v11, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 155
    const-string v9, " since enq)"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    iget-wide v9, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 157
    const-string v9, " finishTime="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    invoke-static {v9, v10, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 158
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    iget-wide v9, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v11, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 160
    const-string v7, " since disp)"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :cond_7
    const-string v7, " receiverTime="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-static {v9, v10, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 164
    :goto_1
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz v7, :cond_8

    .line 166
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "anrCount="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 168
    :cond_8
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez v7, :cond_9

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    if-ne v7, v8, :cond_9

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 169
    :cond_9
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "resultTo="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 170
    const-string v7, " resultCode="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 171
    const-string v7, " resultData="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    :cond_a
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    if-eqz v7, :cond_b

    .line 174
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "resultExtras="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 176
    :cond_b
    iget-boolean v7, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v7, :cond_c

    iget-boolean v7, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v7, :cond_c

    iget-boolean v7, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez v7, :cond_c

    iget-boolean v7, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz v7, :cond_d

    .line 177
    :cond_c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "resultAbort="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 178
    const-string v7, " ordered="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 179
    const-string v7, " sticky="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 180
    const-string v7, " initialSticky="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 182
    :cond_d
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-nez v7, :cond_e

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-eqz v7, :cond_f

    .line 183
    :cond_e
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "nextReceiver="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 184
    const-string v7, " receiver="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 186
    :cond_f
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v7, :cond_10

    .line 187
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "curFilter="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 189
    :cond_10
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_11

    .line 190
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "curReceiver="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 192
    :cond_11
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_13

    .line 193
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "curApp="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 194
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "curComponent="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_12
    const-string v7, "--"

    :goto_2
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_13

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_13

    .line 197
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "curSourceDir="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    :cond_13
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v7, :cond_18

    .line 202
    const-string v11, " (?)"

    .line 203
    .local v11, "stateStr":Ljava/lang/String;
    if-eq v7, v10, :cond_17

    if-eq v7, v9, :cond_16

    if-eq v7, v8, :cond_15

    const/4 v12, 0x4

    if-eq v7, v12, :cond_14

    goto :goto_3

    .line 207
    :cond_14
    const-string v11, " (WAITING_SERVICES)"

    goto :goto_3

    .line 206
    :cond_15
    const-string v11, " (CALL_DONE_RECEIVE)"

    goto :goto_3

    .line 205
    :cond_16
    const-string v11, " (CALL_IN_RECEIVE)"

    goto :goto_3

    .line 204
    :cond_17
    const-string v11, " (APP_RECEIVE)"

    .line 209
    :goto_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "state="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    .end local v11    # "stateStr":Ljava/lang/String;
    :cond_18
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v7, :cond_19

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_4

    :cond_19
    const/4 v7, 0x0

    .line 212
    .local v7, "N":I
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 213
    .local v12, "p2":Ljava/lang/String;
    new-instance v14, Landroid/util/PrintWriterPrinter;

    invoke-direct {v14, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 214
    .local v14, "printer":Landroid/util/PrintWriterPrinter;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    if-ge v15, v7, :cond_20

    .line 215
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 216
    .local v11, "o":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v8, v8, v15

    if-eqz v8, :cond_1d

    if-eq v8, v10, :cond_1c

    if-eq v8, v9, :cond_1b

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1a

    .line 222
    const-string v8, "???????"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 221
    :cond_1a
    const-string v8, "Timeout"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 220
    :cond_1b
    const/4 v9, 0x3

    const-string v8, "Skipped"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 219
    :cond_1c
    const/4 v9, 0x3

    const-string v8, "Deliver"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 218
    :cond_1d
    const/4 v9, 0x3

    const-string v8, "Pending"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    :goto_6
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->duration:[J

    aget-wide v9, v8, v15

    invoke-static {v9, v10, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 225
    const-string v8, " #"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    instance-of v8, v11, Lcom/android/server/am/BroadcastFilter;

    if-eqz v8, :cond_1e

    .line 227
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 228
    move-object v8, v11

    check-cast v8, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v8, v1, v12}, Lcom/android/server/am/BroadcastFilter;->dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_7

    .line 229
    :cond_1e
    instance-of v8, v11, Landroid/content/pm/ResolveInfo;

    if-eqz v8, :cond_1f

    .line 230
    const-string v8, "(manifest)"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    move-object v8, v11

    check-cast v8, Landroid/content/pm/ResolveInfo;

    const/4 v9, 0x0

    invoke-virtual {v8, v14, v12, v9}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    goto :goto_7

    .line 233
    :cond_1f
    const/4 v9, 0x0

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 214
    .end local v11    # "o":Ljava/lang/Object;
    :goto_7
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    goto :goto_5

    .line 236
    .end local v15    # "i":I
    :cond_20
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 428
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 429
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 430
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 431
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 432
    return-void
.end method

.method getReceiverUid(Ljava/lang/Object;)I
    .locals 1
    .param p1, "receiver"    # Ljava/lang/Object;

    .line 364
    instance-of v0, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 365
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    iget v0, v0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    return v0

    .line 367
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method public maybeStripForHistory()Lcom/android/server/am/BroadcastRecord;
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    return-object p0

    .line 375
    :cond_0
    new-instance v0, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->maybeStripForHistory()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V

    return-object v0
.end method

.method splitRecipientsLocked(II)Lcom/android/server/am/BroadcastRecord;
    .locals 28
    .param p1, "slowAppUid"    # I
    .param p2, "startingAt"    # I

    .line 333
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 334
    .local v1, "splitReceivers":Ljava/util/ArrayList;
    move/from16 v2, p2

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 335
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 336
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v4

    move/from16 v15, p1

    if-ne v4, v15, :cond_1

    .line 337
    if-nez v1, :cond_0

    .line 338
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 340
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 343
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 345
    .end local v3    # "o":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 334
    :cond_2
    move/from16 v15, p1

    .line 348
    .end local v2    # "i":I
    if-nez v1, :cond_3

    .line 349
    const/4 v2, 0x0

    return-object v2

    .line 353
    :cond_3
    new-instance v2, Lcom/android/server/am/BroadcastRecord;

    move-object v3, v2

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iget v9, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v10, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iget v14, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iget-object v15, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    move-object/from16 v27, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move-object/from16 v17, v2

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move/from16 v18, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v20, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v21, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v22, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v23, v2

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v24, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    move/from16 v25, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    move/from16 v26, v2

    move-object/from16 v16, v1

    invoke-direct/range {v3 .. v26}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIZZ)V

    move-object/from16 v2, v27

    .line 359
    .local v2, "split":Lcom/android/server/am/BroadcastRecord;
    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    iput v3, v2, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    .line 360
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 424
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    return-object v0
.end method
