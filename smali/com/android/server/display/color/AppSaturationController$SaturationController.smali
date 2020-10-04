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

.field private mSaturationLevel:I

.field private mTransformMatrix:[F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 153
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevel:I

    .line 154
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mTransformMatrix:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/color/AppSaturationController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/color/AppSaturationController$1;

    .line 149
    invoke-direct {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/AppSaturationController$SaturationController;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->addColorTransformController(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/display/color/AppSaturationController$SaturationController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/AppSaturationController$SaturationController;
    .param p1, "x1"    # I

    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->setSaturationLevel(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/AppSaturationController$SaturationController;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private addColorTransformController(Ljava/lang/ref/WeakReference;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;",
            ">;)Z"
        }
    .end annotation

    .line 166
    .local p1, "controller":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;>;"
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevel:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->updateState()Z

    move-result v0

    return v0

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->clearExpiredReferences()V

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method private clearExpiredReferences()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 199
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 201
    .local v1, "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    .line 202
    .local v2, "controller":Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;
    if-nez v2, :cond_0

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 205
    .end local v1    # "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;>;"
    .end local v2    # "controller":Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;
    :cond_0
    goto :goto_0

    .line 206
    :cond_1
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "            mSaturationLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
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

    .line 211
    return-void
.end method

.method private setSaturationLevel(I)Z
    .locals 1
    .param p1, "saturationLevel"    # I

    .line 157
    iput p1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevel:I

    .line 158
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->updateState()Z

    move-result v0

    return v0

    .line 161
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateState()Z
    .locals 6

    .line 176
    iget v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevel:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mTransformMatrix:[F

    invoke-static {v0, v1}, Lcom/android/server/display/color/AppSaturationController;->computeGrayscaleTransformMatrix(F[F)V

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "updated":Z
    iget-object v1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 180
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 181
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 183
    .local v2, "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    .line 184
    .local v3, "controller":Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;
    if-eqz v3, :cond_0

    .line 185
    iget-object v4, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mTransformMatrix:[F

    sget-object v5, Lcom/android/server/display/color/AppSaturationController;->TRANSLATION_VECTOR:[F

    invoke-interface {v3, v4, v5}, Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;->applyAppSaturation([F[F)V

    .line 186
    const/4 v0, 0x1

    goto :goto_1

    .line 189
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 191
    .end local v2    # "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;>;"
    .end local v3    # "controller":Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;
    :goto_1
    goto :goto_0

    .line 192
    :cond_1
    return v0
.end method
