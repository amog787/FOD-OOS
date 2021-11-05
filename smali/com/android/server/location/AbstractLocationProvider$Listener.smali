.class public interface abstract Lcom/android/server/location/AbstractLocationProvider$Listener;
.super Ljava/lang/Object;
.source "AbstractLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/AbstractLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onReportLocation(Landroid/location/Location;)V
.end method

.method public abstract onReportLocation(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStateChanged(Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/server/location/AbstractLocationProvider$State;)V
.end method
