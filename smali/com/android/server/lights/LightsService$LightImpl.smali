.class final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/Light;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightImpl"
.end annotation


# instance fields
.field private mBrightnessMode:I

.field private mColor:I

.field private final mDisplayToken:Landroid/os/IBinder;

.field private mFlashing:Z

.field private mId:I

.field private mInitialized:Z

.field private mLastBrightnessMode:I

.field private mLastColor:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field private final mSurfaceControlMaximumBrightness:I

.field private mUseLowPersistenceForVR:Z

.field private mVrModeEnabled:Z

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;I)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "id"    # I

    .line 99
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/Light;-><init>()V

    .line 100
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    .line 101
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mDisplayToken:Landroid/os/IBinder;

    .line 102
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mDisplayToken:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/view/SurfaceControl;->getDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result v0

    .line 104
    .local v0, "brightnessSupport":Z
    sget-boolean v1, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display brightness support: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    const/4 v1, 0x0

    .line 108
    .local v1, "maximumBrightness":I
    if-eqz v0, :cond_1

    .line 109
    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 110
    .local v2, "pm":Landroid/os/PowerManager;
    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {v2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    .line 114
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_1
    iput v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mSurfaceControlMaximumBrightness:I

    .line 118
    const-string v2, "SurfaceFlinger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/lights/LightsService;->flinger:Landroid/os/IBinder;

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;ILcom/android/server/lights/LightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lights/LightsService;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/lights/LightsService$1;

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/lights/LightsService$LightImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;

    .line 94
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method private getDcEnable()Z
    .locals 3

    .line 320
    const/4 v0, 0x0

    const-string/jumbo v1, "persist.vendor.dc.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private isFodEnabled()Z
    .locals 4

    .line 328
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$400()Lcom/oneplus/core/oimc/OIMCServiceManager;

    move-result-object v1

    const-string v2, "ColorDisable"

    invoke-virtual {v1, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fetch FOD status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LightsService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v0
.end method

.method private notifySurfaceFlingerLight(I)V
    .locals 6
    .param p1, "color"    # I

    .line 241
    const-string v0, "LightsService"

    invoke-static {}, Lcom/android/server/lights/LightsService;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v1, v1, Lcom/android/server/lights/LightsService;->flinger:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 245
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, v2, Lcom/android/server/lights/LightsService;->flinger:Landroid/os/IBinder;

    const/16 v3, 0x4e2d

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 249
    .end local v1    # "data":Landroid/os/Parcel;
    goto :goto_0

    .line 250
    :cond_0
    const-string v1, "flinger is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    goto :goto_1

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "read flinger 20013 is fail"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method private setLightLocked(IIIII)V
    .locals 10
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .line 260
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const/4 p5, 0x2

    goto :goto_0

    .line 262
    :cond_0
    const/4 v0, 0x2

    if-ne p5, v0, :cond_1

    .line 263
    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 266
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    const/4 v6, 0x1

    const-string v7, "LightsService"

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-ne p4, v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    if-eq v0, p5, :cond_5

    .line 268
    :cond_2
    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLight #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": color=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": brightnessMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_3
    iput-boolean v6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    .line 271
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastColor:I

    .line 272
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 273
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 274
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 275
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 276
    iput p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLight("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    const-wide/32 v8, 0x20000

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 282
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-nez v0, :cond_4

    .line 283
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService$LightImpl;->notifySurfaceFlingerLight(I)V

    .line 287
    :cond_4
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/lights/LightsService;->setLight_native(IIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 290
    nop

    .line 296
    :cond_5
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->getDcEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x104

    if-ge p1, v0, :cond_6

    if-gt p1, v6, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->isFodEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 298
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v0, v0, Lcom/android/server/lights/LightsService;->flinger:Landroid/os/IBinder;

    if-eqz v0, :cond_8

    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 300
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v1, v1, Lcom/android/server/lights/LightsService;->flinger:Landroid/os/IBinder;

    const/16 v2, 0x3ec

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 303
    .end local v0    # "data":Landroid/os/Parcel;
    goto :goto_1

    .line 304
    :cond_8
    const-string v0, "flinger is null"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    :goto_1
    goto :goto_2

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "read flinger 1004 is fail"

    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_9
    :goto_2
    return-void

    .line 289
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private shouldBeInLowPersistenceMode()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private stopFlashing()V
    .locals 6

    .line 233
    monitor-enter p0

    .line 234
    :try_start_0
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 235
    monitor-exit p0

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public pulse()V
    .locals 2

    .line 190
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    .line 191
    return-void
.end method

.method public pulse(II)V
    .locals 7
    .param p1, "color"    # I
    .param p2, "onMS"    # I

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z

    if-nez v0, :cond_0

    .line 197
    const/4 v3, 0x2

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 200
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$100(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$100(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 202
    :cond_0
    monitor-exit p0

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(II)V

    .line 125
    return-void
.end method

.method public setBrightness(II)V
    .locals 8
    .param p1, "brightness"    # I
    .param p2, "brightnessMode"    # I

    .line 129
    monitor-enter p0

    .line 131
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 132
    :try_start_0
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBrightness with LOW_PERSISTENCE unexpected #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": brightness=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 139
    :cond_0
    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mSurfaceControlMaximumBrightness:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    .line 146
    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 147
    const-string v0, "LightsService"

    const-string v1, "Using new setBrightness path!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mDisplayToken:Landroid/os/IBinder;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mSurfaceControlMaximumBrightness:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;F)Z

    goto :goto_0

    .line 154
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x70

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-nez v0, :cond_3

    .line 156
    move v1, p1

    .line 157
    .local v1, "color":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 158
    .end local v1    # "color":I
    goto :goto_0

    .line 159
    :cond_3
    and-int/lit16 v0, p1, 0xff

    .line 160
    .local v0, "color":I
    const/high16 v1, -0x1000000

    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 161
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 167
    .end local v0    # "color":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Lcom/oneplus/display/IOneplusColorDisplayManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Lcom/oneplus/display/IOneplusColorDisplayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->adjustLightColorGamut(I)V

    .line 171
    :cond_4
    monitor-exit p0

    .line 172
    return-void

    .line 171
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setColor(I)V
    .locals 6
    .param p1, "color"    # I

    .line 176
    monitor-enter p0

    .line 177
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 178
    monitor-exit p0

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFlashing(IIII)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    .line 183
    monitor-enter p0

    .line 184
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 185
    monitor-exit p0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVrMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 214
    monitor-enter p0

    .line 215
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eq v0, p1, :cond_1

    .line 216
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    .line 218
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 219
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    .line 220
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 229
    :cond_1
    monitor-exit p0

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnOff()V
    .locals 6

    .line 207
    monitor-enter p0

    .line 208
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 209
    monitor-exit p0

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
