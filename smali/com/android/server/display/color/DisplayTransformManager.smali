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

.field static final PERSISTENT_PROPERTY_COMPOSITION_COLOR_MODE:Ljava/lang/String; = "persist.sys.sf.color_mode"

.field static final PERSISTENT_PROPERTY_DISPLAY_COLOR:Ljava/lang/String; = "persist.sys.sf.native_mode"

.field static final PERSISTENT_PROPERTY_SATURATION:Ljava/lang/String; = "persist.sys.sf.color_saturation"

.field private static final SURFACE_FLINGER:Ljava/lang/String; = "SurfaceFlinger"

.field private static final SURFACE_FLINGER_TRANSACTION_COLOR_MATRIX:I = 0x3f7

.field private static final SURFACE_FLINGER_TRANSACTION_DALTONIZER:I = 0x3f6

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_COLOR:I = 0x3ff

.field private static final SURFACE_FLINGER_TRANSACTION_QUERY_COLOR_MANAGED:I = 0x406

.field private static final SURFACE_FLINGER_TRANSACTION_SATURATION:I = 0x3fe

.field private static final TAG:Ljava/lang/String; = "DisplayTransformManager"

.field private static final sFlinger:Landroid/os/IBinder;


# instance fields
.field private final mColorMatrix:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field

.field private mDaltonizerMode:I

.field private final mDaltonizerModeLock:Ljava/lang/Object;

.field private final mTempColorMatrix:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    .line 124
    return-void

    :array_0
    .array-data 4
        0x2
        0x10
    .end array-data
.end method

.method private static applyColorMatrix([F)V
    .locals 5
    .param p0, "m"    # [F

    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 223
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 224
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 225
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 227
    aget v3, p0, v2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 230
    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    :goto_1
    :try_start_0
    sget-object v2, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    const/16 v3, 0x3f7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    nop

    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    goto :goto_3

    .line 237
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "DisplayTransformManager"

    const-string v3, "Failed to set color transform"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    nop

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_2

    .line 239
    :goto_3
    return-void

    .line 237
    :goto_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    throw v1
.end method

.method private static applyDaltonizerMode(I)V
    .locals 5
    .param p0, "mode"    # I

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 246
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    :try_start_0
    sget-object v1, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    const/16 v2, 0x3f6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    nop

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 254
    goto :goto_1

    .line 253
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "DisplayTransformManager"

    const-string v3, "Failed to set Daltonizer mode"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    nop

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 255
    :goto_1
    return-void

    .line 253
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 254
    throw v1
.end method

.method private applySaturation(F)V
    .locals 5
    .param p1, "saturation"    # F

    .line 326
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.sf.color_saturation"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 328
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 331
    :try_start_0
    sget-object v1, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    const/16 v2, 0x3fe

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    nop

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    goto :goto_1

    .line 335
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "DisplayTransformManager"

    const-string v3, "Failed to set saturation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    nop

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 337
    :goto_1
    return-void

    .line 335
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    throw v1
.end method

.method private computeColorMatrixLocked()[F
    .locals 10

    .line 204
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 205
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 206
    const/4 v1, 0x0

    return-object v1

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 210
    .local v1, "result":[[F
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 211
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 212
    iget-object v3, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 213
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

    .line 211
    .end local v3    # "rhs":[F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    .end local v2    # "i":I
    :cond_1
    rem-int/lit8 v2, v0, 0x2

    aget-object v2, v1, v2

    return-object v2
.end method

.method public static needsLinearColorMatrix()Z
    .locals 2

    .line 261
    const-string/jumbo v0, "persist.sys.sf.native_mode"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static needsLinearColorMatrix(I)Z
    .locals 1
    .param p0, "colorMode"    # I

    .line 269
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setDisplayColor(II)V
    .locals 5
    .param p1, "color"    # I
    .param p2, "compositionColorMode"    # I

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.sf.native_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 345
    nop

    .line 346
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 345
    const-string/jumbo v2, "persist.sys.sf.color_mode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 350
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    if-eq p2, v0, :cond_1

    .line 353
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    const/16 v2, 0x3ff

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    nop

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 361
    goto :goto_1

    .line 360
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "DisplayTransformManager"

    const-string v3, "Failed to set display color"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    nop

    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 362
    :goto_1
    return-void

    .line 360
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 361
    throw v0
.end method

.method private updateConfiguration()V
    .locals 3

    .line 366
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplayTransformManager"

    const-string v2, "Could not update configuration"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public getColorMatrix(I)[F
    .locals 3
    .param p1, "key"    # I

    .line 130
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 132
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

    .line 133
    .end local v1    # "value":[F
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDeviceColorManaged()Z
    .locals 6

    .line 307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 308
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 309
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 311
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    const/16 v4, 0x406

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 312
    return v2

    .line 316
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 313
    :catch_0
    move-exception v3

    .line 314
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "DisplayTransformManager"

    const-string v5, "Failed to query wide color support"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    nop

    .end local v3    # "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 318
    nop

    .line 319
    return v2

    .line 316
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 318
    throw v2
.end method

.method public setColorMatrix(I[F)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "value"    # [F

    .line 147
    if-eqz p2, :cond_1

    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 148
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

    .line 152
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 155
    const/16 v1, 0x64

    if-ne p1, v1, :cond_2

    .line 156
    :try_start_0
    monitor-exit v0

    return-void

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 162
    .local v1, "oldValue":[F
    iget-object v2, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 163
    .local v2, "inversionValue":[F
    iget-object v3, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 164
    .local v3, "daltonizerValue":[F
    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    const/16 v4, 0x15e

    if-ne p1, v4, :cond_4

    .line 165
    const-string v4, "DisplayTransformManager"

    const-string/jumbo v5, "inversion and daltonizer turn on, do not set onrplusMatrix"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 p2, 0x0

    .line 169
    :cond_4
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v4

    if-nez v4, :cond_7

    .line 170
    if-nez p2, :cond_5

    .line 171
    iget-object v4, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 172
    :cond_5
    if-nez v1, :cond_6

    .line 173
    iget-object v4, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    array-length v5, p2

    invoke-static {p2, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 175
    :cond_6
    array-length v4, p2

    const/4 v5, 0x0

    invoke-static {p2, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/color/DisplayTransformManager;->computeColorMatrixLocked()[F

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/display/color/DisplayTransformManager;->applyColorMatrix([F)V

    .line 181
    .end local v1    # "oldValue":[F
    .end local v2    # "inversionValue":[F
    .end local v3    # "daltonizerValue":[F
    :cond_7
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setColorMode(I[FI)Z
    .locals 4
    .param p1, "colorMode"    # I
    .param p2, "nightDisplayMatrix"    # [F
    .param p3, "compositionColorMode"    # I

    .line 277
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    .line 278
    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 279
    invoke-direct {p0, v0, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    goto :goto_0

    .line 280
    :cond_0
    if-ne p1, v1, :cond_1

    .line 281
    const v2, 0x3f8ccccd    # 1.1f

    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 282
    invoke-direct {p0, v0, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    goto :goto_0

    .line 283
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 284
    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 285
    invoke-direct {p0, v1, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    goto :goto_0

    .line 286
    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 287
    invoke-direct {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 288
    invoke-direct {p0, v0, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

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
    invoke-direct {p0, p1, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

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

    .line 191
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    if-eq v1, p1, :cond_0

    .line 193
    iput p1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    .line 194
    invoke-static {p1}, Lcom/android/server/display/color/DisplayTransformManager;->applyDaltonizerMode(I)V

    .line 196
    :cond_0
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
