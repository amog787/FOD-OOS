.class public Lcom/android/server/display/color/DisplayTransformManager;
.super Ljava/lang/Object;
.source "DisplayTransformManager.java"


# static fields
.field private static final COLOR_SATURATION_BOOSTED:F = 1.1f

.field private static final COLOR_SATURATION_NATURAL:F = 1.0f

.field private static final DISPLAY_COLOR_ENHANCED:I = 0x2

.field private static final DISPLAY_COLOR_MANAGED:I = 0x0

.field private static final DISPLAY_COLOR_UNMANAGED:I = 0x1

.field public static final LEVEL_COLOR_MATRIX_DISPLAY_WHITE_BALANCE:I = 0x7d

.field public static final LEVEL_COLOR_MATRIX_GRAYSCALE:I = 0xc8

.field public static final LEVEL_COLOR_MATRIX_INVERT_COLOR:I = 0x12c

.field public static final LEVEL_COLOR_MATRIX_NIGHT_DISPLAY:I = 0x64

.field public static final LEVEL_COLOR_MATRIX_SATURATION:I = 0x96

.field static final PERSISTENT_PROPERTY_DISPLAY_COLOR:Ljava/lang/String; = "persist.sys.sf.native_mode"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PERSISTENT_PROPERTY_SATURATION:Ljava/lang/String; = "persist.sys.sf.color_saturation"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final SURFACE_FLINGER:Ljava/lang/String; = "SurfaceFlinger"

.field private static final SURFACE_FLINGER_TRANSACTION_COLOR_MATRIX:I = 0x3f7

.field private static final SURFACE_FLINGER_TRANSACTION_DALTONIZER:I = 0x3f6

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_COLOR:I = 0x3ff

.field private static final SURFACE_FLINGER_TRANSACTION_QUERY_COLOR_MANAGED:I = 0x406

.field private static final SURFACE_FLINGER_TRANSACTION_SATURATION:I = 0x3fe

.field private static final TAG:Ljava/lang/String; = "DisplayTransformManager"


# instance fields
.field private final mColorMatrix:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mColorMatrix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field

.field private mDaltonizerMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDaltonizerModeLock"
        }
    .end annotation
.end field

.field private final mDaltonizerModeLock:Ljava/lang/Object;

.field private final mTempColorMatrix:[[F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mColorMatrix"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    .line 108
    const/4 v0, 0x2

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    .line 119
    return-void
.end method

.method private static applyColorMatrix([F)V
    .locals 5
    .param p0, "m"    # [F

    .line 217
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 218
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_2

    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 220
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 221
    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 222
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 224
    aget v4, p0, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 223
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 227
    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    :goto_1
    const/16 v3, 0x3f7

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v3, v1, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    nop

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 235
    goto :goto_4

    .line 234
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to set color transform"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    nop

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_2

    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 237
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_2
    :goto_4
    return-void
.end method

.method private static applyDaltonizerMode(I)V
    .locals 5
    .param p0, "mode"    # I

    .line 243
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 244
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 246
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/16 v2, 0x3f6

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    nop

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 254
    goto :goto_2

    .line 253
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 250
    :catch_0
    move-exception v2

    .line 251
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to set Daltonizer mode"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    nop

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 256
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_0
    :goto_2
    return-void
.end method

.method private applySaturation(F)V
    .locals 5
    .param p1, "saturation"    # F

    .line 329
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.sf.color_saturation"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 331
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 333
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 336
    const/16 v2, 0x3fe

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    nop

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 341
    goto :goto_2

    .line 340
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 337
    :catch_0
    move-exception v2

    .line 338
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to set saturation"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    nop

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 343
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_0
    :goto_2
    return-void
.end method

.method private computeColorMatrixLocked()[F
    .locals 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mColorMatrix"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 200
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 201
    const/4 v1, 0x0

    return-object v1

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 205
    .local v1, "result":[[F
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 206
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 207
    iget-object v3, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 208
    .local v3, "rhs":[F
    add-int/lit8 v4, v2, 0x1

    rem-int/lit8 v4, v4, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x0

    rem-int/lit8 v6, v2, 0x2

    aget-object v6, v1, v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, v3

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 206
    .end local v3    # "rhs":[F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "i":I
    :cond_1
    rem-int/lit8 v2, v0, 0x2

    aget-object v2, v1, v2

    return-object v2
.end method

.method public static needsLinearColorMatrix()Z
    .locals 2

    .line 262
    const/4 v0, 0x1

    const-string/jumbo v1, "persist.sys.sf.native_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static needsLinearColorMatrix(I)Z
    .locals 1
    .param p0, "colorMode"    # I

    .line 270
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setDisplayColor(I)V
    .locals 5
    .param p1, "color"    # I

    .line 349
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.sf.native_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 351
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 353
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/16 v2, 0x3ff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    nop

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 361
    goto :goto_2

    .line 360
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 357
    :catch_0
    move-exception v2

    .line 358
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to set display color"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    nop

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 363
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_0
    :goto_2
    return-void
.end method

.method private updateConfiguration()V
    .locals 3

    .line 367
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplayTransformManager"

    const-string v2, "Could not update configuration"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public getColorMatrix(I)[F
    .locals 3
    .param p1, "key"    # I

    .line 125
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 127
    .local v1, "value":[F
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    :goto_0
    monitor-exit v0

    return-object v2

    .line 128
    .end local v1    # "value":[F
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDeviceColorManaged()Z
    .locals 7

    .line 307
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 308
    .local v0, "flinger":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 310
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 311
    .local v3, "reply":Landroid/os/Parcel;
    const-string v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 313
    const/16 v4, 0x406

    :try_start_0
    invoke-interface {v0, v4, v2, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 314
    invoke-virtual {v3}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 314
    return v1

    .line 318
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 315
    :catch_0
    move-exception v4

    .line 316
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "DisplayTransformManager"

    const-string v6, "Failed to query wide color support"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    nop

    .end local v4    # "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 320
    goto :goto_1

    .line 318
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 322
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_1
    return v1
.end method

.method public setColorMatrix(I[F)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "value"    # [F

    .line 142
    if-eqz p2, :cond_1

    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected length: 16 (4x4 matrix), actual length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 150
    const/16 v1, 0x64

    if-ne p1, v1, :cond_2

    .line 151
    :try_start_0
    monitor-exit v0

    return-void

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 157
    .local v1, "oldValue":[F
    iget-object v2, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 158
    .local v2, "inversionValue":[F
    iget-object v3, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 159
    .local v3, "daltonizerValue":[F
    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    const/16 v4, 0x15e

    if-ne p1, v4, :cond_4

    .line 160
    const-string v4, "DisplayTransformManager"

    const-string v5, "inversion and daltonizer turn on, do not set onrplusMatrix"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 p2, 0x0

    .line 164
    :cond_4
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v4

    if-nez v4, :cond_7

    .line 165
    if-nez p2, :cond_5

    .line 166
    iget-object v4, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 167
    :cond_5
    if-nez v1, :cond_6

    .line 168
    iget-object v4, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    array-length v5, p2

    invoke-static {p2, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 170
    :cond_6
    array-length v4, p2

    const/4 v5, 0x0

    invoke-static {p2, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/color/DisplayTransformManager;->computeColorMatrixLocked()[F

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/display/color/DisplayTransformManager;->applyColorMatrix([F)V

    .line 176
    .end local v1    # "oldValue":[F
    .end local v2    # "inversionValue":[F
    .end local v3    # "daltonizerValue":[F
    :cond_7
    monitor-exit v0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setColorMode(I[F)Z
    .locals 4
    .param p1, "colorMode"    # I
    .param p2, "nightDisplayMatrix"    # [F

    .line 277
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    .line 278
    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 279
    invoke-direct {p0, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(I)V

    goto :goto_0

    .line 280
    :cond_0
    if-ne p1, v1, :cond_1

    .line 281
    const v2, 0x3f8ccccd    # 1.1f

    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 282
    invoke-direct {p0, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(I)V

    goto :goto_0

    .line 283
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 284
    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 285
    invoke-direct {p0, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(I)V

    goto :goto_0

    .line 286
    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 287
    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 288
    invoke-direct {p0, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(I)V

    goto :goto_0

    .line 289
    :cond_3
    const/16 v0, 0x100

    if-lt p1, v0, :cond_4

    const/16 v0, 0x1ff

    if-gt p1, v0, :cond_4

    .line 291
    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 292
    invoke-direct {p0, p1}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(I)V

    .line 295
    :cond_4
    :goto_0
    const/16 v0, 0x64

    invoke-virtual {p0, v0, p2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 297
    invoke-direct {p0}, Lcom/android/server/display/color/DisplayTransformManager;->updateConfiguration()V

    .line 299
    return v1
.end method

.method public setDaltonizerMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 186
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    if-eq v1, p1, :cond_0

    .line 188
    iput p1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    .line 189
    invoke-static {p1}, Lcom/android/server/display/color/DisplayTransformManager;->applyDaltonizerMode(I)V

    .line 191
    :cond_0
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
