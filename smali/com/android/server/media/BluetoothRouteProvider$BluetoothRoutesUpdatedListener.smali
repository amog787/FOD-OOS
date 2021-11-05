.class interface abstract Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;
.super Ljava/lang/Object;
.source "BluetoothRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/BluetoothRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "BluetoothRoutesUpdatedListener"
.end annotation


# virtual methods
.method public abstract onBluetoothRoutesUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation
.end method
