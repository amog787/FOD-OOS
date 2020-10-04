.class final Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;
.super Landroid/os/Handler;
.source "AbstractAccessibilityServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InvocationHandler"
.end annotation


# static fields
.field public static final MSG_CLEAR_ACCESSIBILITY_CACHE:I = 0x2

.field private static final MSG_ON_ACCESSIBILITY_BUTTON_AVAILABILITY_CHANGED:I = 0x8

.field private static final MSG_ON_ACCESSIBILITY_BUTTON_CLICKED:I = 0x7

.field public static final MSG_ON_GESTURE:I = 0x1

.field private static final MSG_ON_MAGNIFICATION_CHANGED:I = 0x5

.field private static final MSG_ON_SOFT_KEYBOARD_STATE_CHANGED:I = 0x6


# instance fields
.field private mIsSoftKeyboardCallbackEnabled:Z

.field private final mMagnificationCallbackState:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mlock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1308
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 1309
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1304
    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    .line 1306
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 1310
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .line 1314
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1315
    .local v0, "type":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 1346
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1347
    .local v1, "available":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$600(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Z)V

    .line 1348
    .end local v1    # "available":Z
    goto :goto_1

    .line 1351
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1342
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$500(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 1343
    goto :goto_1

    .line 1337
    :cond_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1338
    .local v1, "showState":I
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$400(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V

    .line 1339
    .end local v1    # "showState":I
    goto :goto_1

    .line 1326
    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1327
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Region;

    .line 1328
    .local v2, "region":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 1329
    .local v9, "scale":F
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 1330
    .local v10, "centerX":F
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 1331
    .local v11, "centerY":F
    iget v12, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1332
    .local v12, "displayId":I
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    move v4, v12

    move-object v5, v2

    move v6, v9

    move v7, v10

    move v8, v11

    invoke-static/range {v3 .. v8}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$300(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/graphics/Region;FFF)V

    .line 1333
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1334
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "region":Landroid/graphics/Region;
    .end local v9    # "scale":F
    .end local v10    # "centerX":F
    .end local v11    # "centerY":F
    .end local v12    # "displayId":I
    goto :goto_1

    .line 1322
    :cond_5
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$200(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 1323
    goto :goto_1

    .line 1317
    :cond_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1318
    .local v1, "gestureId":I
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$100(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V

    .line 1319
    .end local v1    # "gestureId":I
    nop

    .line 1354
    :goto_1
    return-void
.end method

.method public isMagnificationCallbackEnabled(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .line 1386
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1387
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1388
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .locals 2
    .param p1, "available"    # Z

    .line 1410
    nop

    .line 1411
    const/4 v0, 0x0

    .line 1410
    const/16 v1, 0x8

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1412
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1413
    return-void
.end method

.method public notifyAccessibilityButtonClickedLocked()V
    .locals 1

    .line 1405
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1406
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1407
    return-void
.end method

.method public notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "scale"    # F
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F

    .line 1358
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1359
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1360
    monitor-exit v0

    return-void

    .line 1362
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1365
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1366
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1367
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1368
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1369
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1371
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1372
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1373
    return-void

    .line 1362
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .locals 2
    .param p1, "showState"    # I

    .line 1392
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    if-nez v0, :cond_0

    .line 1393
    return-void

    .line 1396
    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1397
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1398
    return-void
.end method

.method public setMagnificationCallbackEnabled(IZ)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "enabled"    # Z

    .line 1376
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1377
    if-eqz p2, :cond_0

    .line 1378
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1380
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1382
    :goto_0
    monitor-exit v0

    .line 1383
    return-void

    .line 1382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1401
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 1402
    return-void
.end method
