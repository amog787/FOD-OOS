.class Lcom/android/server/display/color/AppSaturationController;
.super Ljava/lang/Object;
.source "AppSaturationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/color/AppSaturationController$SaturationController;
    }
.end annotation


# static fields
.field static final TRANSLATION_VECTOR:[F


# instance fields
.field private final mAppsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/color/AppSaturationController$SaturationController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/display/color/AppSaturationController;->TRANSLATION_VECTOR:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    return-void
.end method

.method static computeGrayscaleTransformMatrix(F[F)V
    .locals 7
    .param p0, "saturation"    # F
    .param p1, "matrix"    # [F

    .line 137
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    .line 138
    .local v0, "desaturation":F
    const/4 v1, 0x3

    new-array v2, v1, [F

    const v3, 0x3e6c8b44    # 0.231f

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    aput v3, v2, v4

    const v3, 0x3f370a3d    # 0.715f

    mul-float/2addr v3, v0

    const/4 v5, 0x1

    aput v3, v2, v5

    const v3, 0x3d9374bc    # 0.072f

    mul-float/2addr v3, v0

    const/4 v6, 0x2

    aput v3, v2, v6

    .line 140
    .local v2, "luminance":[F
    aget v3, v2, v4

    add-float/2addr v3, p0

    aput v3, p1, v4

    .line 141
    aget v3, v2, v4

    aput v3, p1, v5

    .line 142
    aget v3, v2, v4

    aput v3, p1, v6

    .line 143
    aget v3, v2, v5

    aput v3, p1, v1

    .line 144
    aget v1, v2, v5

    add-float/2addr v1, p0

    const/4 v3, 0x4

    aput v1, p1, v3

    .line 145
    aget v1, v2, v5

    const/4 v3, 0x5

    aput v1, p1, v3

    .line 146
    aget v1, v2, v6

    const/4 v3, 0x6

    aput v1, p1, v3

    .line 147
    aget v1, v2, v6

    const/4 v3, 0x7

    aput v1, p1, v3

    .line 148
    aget v1, v2, v6

    add-float/2addr v1, p0

    const/16 v3, 0x8

    aput v1, p1, v3

    .line 149
    return-void
.end method

.method private getOrCreateSaturationControllerLocked(Landroid/util/SparseArray;I)Lcom/android/server/display/color/AppSaturationController$SaturationController;
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/color/AppSaturationController$SaturationController;",
            ">;I)",
            "Lcom/android/server/display/color/AppSaturationController$SaturationController;"
        }
    .end annotation

    .line 126
    .local p1, "appUserIdMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/color/AppSaturationController$SaturationController;>;"
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/AppSaturationController$SaturationController;

    return-object v0

    .line 130
    :cond_0
    new-instance v0, Lcom/android/server/display/color/AppSaturationController$SaturationController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/color/AppSaturationController$SaturationController;-><init>(Lcom/android/server/display/color/AppSaturationController$1;)V

    .line 131
    .local v0, "saturationController":Lcom/android/server/display/color/AppSaturationController$SaturationController;
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    return-object v0
.end method

.method private getOrCreateUserIdMapLocked(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/color/AppSaturationController$SaturationController;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 117
    .local v0, "appUserIdMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/color/AppSaturationController$SaturationController;>;"
    iget-object v1, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-object v0
.end method

.method private getSaturationControllerLocked(Ljava/lang/String;I)Lcom/android/server/display/color/AppSaturationController$SaturationController;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/display/color/AppSaturationController;->getOrCreateUserIdMapLocked(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/display/color/AppSaturationController;->getOrCreateSaturationControllerLocked(Landroid/util/SparseArray;I)Lcom/android/server/display/color/AppSaturationController$SaturationController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addColorTransformController(Ljava/lang/String;ILjava/lang/ref/WeakReference;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;",
            ">;)Z"
        }
    .end annotation

    .line 55
    .local p3, "controller":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;>;"
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/color/AppSaturationController;->getSaturationControllerLocked(Ljava/lang/String;I)Lcom/android/server/display/color/AppSaturationController$SaturationController;

    move-result-object v1

    .line 57
    invoke-static {v1, p3}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->access$000(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/lang/ref/WeakReference;)Z

    move-result v1

    monitor-exit v0

    .line 56
    return v1

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 78
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    const-string v1, "App Saturation: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 81
    const-string v1, "    No packages"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    monitor-exit v0

    return-void

    .line 84
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    .local v1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 86
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 87
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    iget-object v4, p0, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 89
    .local v4, "appUserIdMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/color/AppSaturationController$SaturationController;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "        "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/color/AppSaturationController$SaturationController;

    invoke-static {v6, p1}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->access$200(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/io/PrintWriter;)V

    .line 89
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 93
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "appUserIdMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/color/AppSaturationController$SaturationController;>;"
    .end local v5    # "i":I
    :cond_1
    goto :goto_0

    .line 94
    .end local v1    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSaturationLevel(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 2
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "affectedPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "saturationLevel"    # I

    .line 68
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/display/color/AppSaturationController;->getSaturationControllerLocked(Ljava/lang/String;I)Lcom/android/server/display/color/AppSaturationController$SaturationController;

    move-result-object v1

    .line 70
    invoke-static {v1, p1, p4}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->access$100(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v0

    .line 69
    return v1

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
