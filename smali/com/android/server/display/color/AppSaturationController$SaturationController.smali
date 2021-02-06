.class Lcom/android/server/display/color/AppSaturationController$SaturationController;
.super Ljava/lang/Object;
.source "AppSaturationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/AppSaturationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaturationController"
.end annotation


# static fields
.field private static final FULL_SATURATION:I = 0x64


# instance fields
.field private final mControllerRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSaturationLevels:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformMatrix:[F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 157
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    .line 158
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mTransformMatrix:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/color/AppSaturationController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/color/AppSaturationController$1;

    .line 151
    invoke-direct {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/AppSaturationController$SaturationController;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->addColorTransformController(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/AppSaturationController$SaturationController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->setSaturationLevel(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/AppSaturationController$SaturationController;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private addColorTransformController(Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;",
            ">;)Z"
        }
    .end annotation

    .line 174
    .local p1, "controller":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;>;"
    invoke-direct {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->clearExpiredReferences()V

    .line 175
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->updateState()Z

    move-result v0

    return v0

    .line 179
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private calculateSaturationLevel()I
    .locals 3

    .line 183
    const/16 v0, 0x64

    .line 184
    .local v0, "saturationLevel":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 186
    .local v2, "level":I
    if-ge v2, v0, :cond_0

    .line 187
    move v0, v2

    .line 184
    .end local v2    # "level":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private clearExpiredReferences()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 215
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 216
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 218
    .local v1, "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    .line 219
    .local v2, "controller":Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;
    if-nez v2, :cond_0

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 222
    .end local v1    # "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;>;"
    .end local v2    # "controller":Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;
    :cond_0
    goto :goto_0

    .line 223
    :cond_1
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "            mSaturationLevels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "            mControllerRefs count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method private setSaturationLevel(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "saturationLevel"    # I

    .line 161
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    invoke-direct {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->updateState()Z

    move-result v0

    return v0

    .line 169
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateState()Z
    .locals 6

    .line 194
    invoke-direct {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->calculateSaturationLevel()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mTransformMatrix:[F

    invoke-static {v0, v1}, Lcom/android/server/display/color/AppSaturationController;->computeGrayscaleTransformMatrix(F[F)V

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "updated":Z
    iget-object v1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 198
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 199
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 201
    .local v2, "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    .line 202
    .local v3, "controller":Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;
    if-eqz v3, :cond_0

    .line 203
    iget-object v4, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mTransformMatrix:[F

    sget-object v5, Lcom/android/server/display/color/AppSaturationController;->TRANSLATION_VECTOR:[F

    invoke-interface {v3, v4, v5}, Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;->applyAppSaturation([F[F)V

    .line 204
    const/4 v0, 0x1

    goto :goto_1

    .line 207
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 209
    .end local v2    # "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;>;"
    .end local v3    # "controller":Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;
    :goto_1
    goto :goto_0

    .line 210
    :cond_1
    return v0
.end method
