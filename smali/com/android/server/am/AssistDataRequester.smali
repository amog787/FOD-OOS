.class public Lcom/android/server/am/AssistDataRequester;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "AssistDataRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;
    }
.end annotation


# static fields
.field public static final KEY_RECEIVER_EXTRA_COUNT:Ljava/lang/String; = "count"

.field public static final KEY_RECEIVER_EXTRA_INDEX:Ljava/lang/String; = "index"


# instance fields
.field public mActivityTaskManager:Landroid/app/IActivityTaskManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAssistData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssistScreenshot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

.field private mCallbacksLock:Ljava/lang/Object;

.field private mCanceled:Z

.field private mContext:Landroid/content/Context;

.field private mPendingDataCount:I

.field private mPendingScreenshotCount:I

.field private mRequestScreenshotAppOps:I

.field private mRequestStructureAppOps:I

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p4, "callbacks"    # Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;
    .param p5, "callbacksLock"    # Ljava/lang/Object;
    .param p6, "requestStructureAppOps"    # I
    .param p7, "requestScreenshotAppOps"    # I

    .line 131
    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    .line 132
    iput-object p4, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    .line 133
    iput-object p5, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    .line 134
    iput-object p2, p0, Lcom/android/server/am/AssistDataRequester;->mWindowManager:Landroid/view/IWindowManager;

    .line 135
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 136
    iput-object p1, p0, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    .line 137
    iput-object p3, p0, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 138
    iput p6, p0, Lcom/android/server/am/AssistDataRequester;->mRequestStructureAppOps:I

    .line 139
    iput p7, p0, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    .line 140
    return-void
.end method

.method private dispatchAssistDataReceived(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "activityIndex":I
    const/4 v1, 0x0

    .line 370
    .local v1, "activityCount":I
    if-eqz p1, :cond_0

    .line 371
    const-string/jumbo v2, "receiverExtras"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 372
    .local v2, "receiverExtras":Landroid/os/Bundle;
    :goto_0
    if-eqz v2, :cond_1

    .line 373
    const-string v3, "index"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 374
    const-string v3, "count"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 376
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v3, p1, v0, v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistDataReceivedLocked(Landroid/os/Bundle;II)V

    .line 377
    return-void
.end method

.method private dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .line 380
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V

    .line 381
    return-void
.end method

.method private flushPendingAssistData()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 295
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 296
    iget-object v2, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 299
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 300
    .local v1, "screenshotsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 301
    iget-object v3, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {p0, v3}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 303
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 304
    return-void
.end method

.method private requestData(Ljava/util/List;ZZZZZILjava/lang/String;)V
    .locals 21
    .param p2, "requestAutofillData"    # Z
    .param p3, "fetchData"    # Z
    .param p4, "fetchScreenshot"    # Z
    .param p5, "allowFetchData"    # Z
    .param p6, "allowFetchScreenshot"    # Z
    .param p7, "callingUid"    # I
    .param p8, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;ZZZZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 194
    .local p1, "activityTokens":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    move-object/from16 v8, p0

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    .line 197
    return-void

    .line 201
    :cond_0
    const/4 v1, 0x0

    .line 203
    .local v1, "isAssistDataAllowed":Z
    :try_start_0
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 206
    move v11, v1

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    move v11, v1

    .line 207
    .end local v1    # "isAssistDataAllowed":Z
    .local v11, "isAssistDataAllowed":Z
    :goto_0
    and-int v12, p5, v11

    .line 208
    .end local p5    # "allowFetchData":Z
    .local v12, "allowFetchData":Z
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz p3, :cond_1

    if-eqz v11, :cond_1

    iget v0, v8, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    move v0, v14

    goto :goto_1

    :cond_1
    move v0, v13

    :goto_1
    and-int v15, p6, v0

    .line 211
    .end local p6    # "allowFetchScreenshot":Z
    .local v15, "allowFetchScreenshot":Z
    iput-boolean v13, v8, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    .line 212
    iput v13, v8, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 213
    iput v13, v8, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 214
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 215
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 217
    const/4 v7, 0x0

    if-eqz p3, :cond_b

    .line 218
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, v8, Lcom/android/server/am/AssistDataRequester;->mRequestStructureAppOps:I

    invoke-virtual {v0, v1, v9, v10}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    if-eqz v12, :cond_9

    .line 220
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    .line 221
    .local v6, "numActivities":I
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_2
    if-ge v5, v6, :cond_8

    .line 222
    move-object/from16 v4, p1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/IBinder;

    .line 224
    .local v3, "topActivity":Landroid/os/IBinder;
    :try_start_1
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    const-string v1, "assist_with_context"

    invoke-static {v0, v1, v14}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v0, "receiverExtras":Landroid/os/Bundle;
    const-string v1, "index"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    const-string v1, "count"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 228
    if-eqz p2, :cond_2

    .line 229
    :try_start_2
    iget-object v1, v8, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v1, v8, v0, v3, v13}, Landroid/app/IActivityTaskManager;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move-object v13, v7

    goto :goto_5

    .line 246
    .end local v0    # "receiverExtras":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move-object v13, v7

    goto :goto_8

    .line 231
    .restart local v0    # "receiverExtras":Landroid/os/Bundle;
    :cond_2
    :try_start_3
    iget-object v1, v8, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v2, 0x1

    if-nez v5, :cond_3

    move/from16 v16, v14

    goto :goto_3

    :cond_3
    move/from16 v16, v13

    :goto_3
    if-nez v5, :cond_4

    move/from16 v17, v14

    goto :goto_4

    :cond_4
    move/from16 v17, v13

    :goto_4
    move-object/from16 v18, v3

    .end local v3    # "topActivity":Landroid/os/IBinder;
    .local v18, "topActivity":Landroid/os/IBinder;
    move-object/from16 v3, p0

    move-object v4, v0

    move/from16 v19, v5

    .end local v5    # "i":I
    .local v19, "i":I
    move-object/from16 v5, v18

    move/from16 v20, v6

    .end local v6    # "numActivities":I
    .local v20, "numActivities":I
    move/from16 v6, v16

    move-object v13, v7

    move/from16 v7, v17

    :try_start_4
    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityTaskManager;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v1

    :goto_5
    nop

    .line 234
    .local v1, "result":Z
    if-eqz v1, :cond_5

    .line 235
    iget v2, v8, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    add-int/2addr v2, v14

    iput v2, v8, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    goto :goto_7

    .line 246
    .end local v0    # "receiverExtras":Landroid/os/Bundle;
    .end local v1    # "result":Z
    :catch_2
    move-exception v0

    goto :goto_8

    .line 236
    .restart local v0    # "receiverExtras":Landroid/os/Bundle;
    .restart local v1    # "result":Z
    :cond_5
    if-nez v19, :cond_7

    .line 238
    iget-object v2, v8, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v2}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 239
    invoke-direct {v8, v13}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    goto :goto_6

    .line 241
    :cond_6
    iget-object v2, v8, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 243
    :goto_6
    const/4 v2, 0x0

    .line 244
    .end local v15    # "allowFetchScreenshot":Z
    .local v2, "allowFetchScreenshot":Z
    move v15, v2

    goto :goto_9

    .line 248
    .end local v0    # "receiverExtras":Landroid/os/Bundle;
    .end local v1    # "result":Z
    .end local v2    # "allowFetchScreenshot":Z
    .restart local v15    # "allowFetchScreenshot":Z
    :cond_7
    :goto_7
    goto :goto_8

    .line 246
    .end local v18    # "topActivity":Landroid/os/IBinder;
    .end local v19    # "i":I
    .end local v20    # "numActivities":I
    .restart local v3    # "topActivity":Landroid/os/IBinder;
    .restart local v5    # "i":I
    .restart local v6    # "numActivities":I
    :catch_3
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move-object v13, v7

    .line 221
    .end local v3    # "topActivity":Landroid/os/IBinder;
    .end local v5    # "i":I
    .end local v6    # "numActivities":I
    .restart local v19    # "i":I
    .restart local v20    # "numActivities":I
    :goto_8
    add-int/lit8 v5, v19, 0x1

    move-object v7, v13

    move/from16 v6, v20

    const/4 v13, 0x0

    .end local v19    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_2

    .end local v20    # "numActivities":I
    .restart local v6    # "numActivities":I
    :cond_8
    move/from16 v19, v5

    move/from16 v20, v6

    move-object v13, v7

    .line 250
    .end local v5    # "i":I
    .end local v6    # "numActivities":I
    :goto_9
    goto :goto_b

    .line 218
    :cond_9
    move-object v13, v7

    .line 252
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 253
    invoke-direct {v8, v13}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    goto :goto_a

    .line 255
    :cond_a
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :goto_a
    const/4 v15, 0x0

    goto :goto_b

    .line 217
    :cond_b
    move-object v13, v7

    .line 261
    :goto_b
    if-eqz p4, :cond_e

    .line 262
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, v8, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    invoke-virtual {v0, v1, v9, v10}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    if-eqz v15, :cond_c

    .line 265
    :try_start_5
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    const-string v1, "assist_with_screen"

    invoke-static {v0, v1, v14}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 266
    iget v0, v8, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    add-int/2addr v0, v14

    iput v0, v8, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 267
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, v8}, Landroid/view/IWindowManager;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_c

    .line 268
    :catch_4
    move-exception v0

    .line 270
    :goto_c
    goto :goto_d

    .line 272
    :cond_c
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 273
    invoke-direct {v8, v13}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    goto :goto_d

    .line 275
    :cond_d
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_e
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    .line 282
    return-void
.end method

.method private tryDispatchRequestComplete()V
    .locals 1

    .line 384
    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 385
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistRequestCompleted()V

    .line 388
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 322
    iput v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 323
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 324
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 325
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 391
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingDataCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 392
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAssistData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 393
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingScreenshotCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 394
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAssistScreenshot="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 395
    return-void
.end method

.method public getPendingDataCount()I
    .locals 1

    .line 307
    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    return v0
.end method

.method public getPendingScreenshotCount()I
    .locals 1

    .line 311
    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    return v0
.end method

.method public onHandleAssistData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .line 329
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    if-eqz v1, :cond_0

    .line 331
    monitor-exit v0

    return-void

    .line 333
    :cond_0
    iget v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 335
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 338
    invoke-direct {p0, p1}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    .line 339
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :goto_0
    monitor-exit v0

    .line 345
    return-void

    .line 344
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .line 349
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    if-eqz v1, :cond_0

    .line 351
    monitor-exit v0

    return-void

    .line 353
    :cond_0
    iget v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 355
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 358
    invoke-direct {p0, p1}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    .line 359
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    goto :goto_0

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    :goto_0
    monitor-exit v0

    .line 365
    return-void

    .line 364
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public processPendingAssistData()V
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 290
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    .line 291
    return-void
.end method

.method public requestAssistData(Ljava/util/List;ZZZZILjava/lang/String;)V
    .locals 9
    .param p2, "fetchData"    # Z
    .param p3, "fetchScreenshot"    # Z
    .param p4, "allowFetchData"    # Z
    .param p5, "allowFetchScreenshot"    # Z
    .param p6, "callingUid"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;ZZZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 165
    .local p1, "activityTokens":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/AssistDataRequester;->requestData(Ljava/util/List;ZZZZZILjava/lang/String;)V

    .line 167
    return-void
.end method

.method public requestAutofillData(Ljava/util/List;ILjava/lang/String;)V
    .locals 9
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 150
    .local p1, "activityTokens":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/AssistDataRequester;->requestData(Ljava/util/List;ZZZZZILjava/lang/String;)V

    .line 154
    return-void
.end method
