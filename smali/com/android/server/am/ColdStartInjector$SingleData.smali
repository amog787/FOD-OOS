.class final Lcom/android/server/am/ColdStartInjector$SingleData;
.super Ljava/lang/Object;
.source "ColdStartInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ColdStartInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleData"
.end annotation


# instance fields
.field public mAdjRange:I

.field public mCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "adj"    # I

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ColdStartInjector$SingleData;->mCount:I

    .line 317
    iput p1, p0, Lcom/android/server/am/ColdStartInjector$SingleData;->mAdjRange:I

    .line 318
    return-void
.end method


# virtual methods
.method public addCount()V
    .locals 1

    .line 325
    iget v0, p0, Lcom/android/server/am/ColdStartInjector$SingleData;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ColdStartInjector$SingleData;->mCount:I

    .line 326
    return-void
.end method

.method public cleanCount()V
    .locals 1

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ColdStartInjector$SingleData;->mCount:I

    .line 322
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/am/ColdStartInjector$SingleData;->mAdjRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ColdStartInjector$SingleData;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
