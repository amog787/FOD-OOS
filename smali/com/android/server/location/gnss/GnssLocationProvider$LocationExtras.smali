.class Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationExtras"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mMaxCn0:I

.field private mMeanCn0:I

.field private mSvCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    .line 285
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 2

    .line 312
    monitor-enter p0

    .line 313
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit p0

    return-object v0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->set(III)V

    .line 298
    return-void
.end method

.method public set(III)V
    .locals 1
    .param p1, "svCount"    # I
    .param p2, "meanCn0"    # I
    .param p3, "maxCn0"    # I

    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mSvCount:I

    .line 290
    iput p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mMeanCn0:I

    .line 291
    iput p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mMaxCn0:I

    .line 292
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->setBundle(Landroid/os/Bundle;)V

    .line 294
    return-void

    .line 292
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 302
    if-eqz p1, :cond_0

    .line 303
    monitor-enter p0

    .line 304
    :try_start_0
    const-string/jumbo v0, "satellites"

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    const-string/jumbo v0, "meanCn0"

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mMeanCn0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    const-string/jumbo v0, "maxCn0"

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mMaxCn0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 309
    :cond_0
    :goto_0
    return-void
.end method
