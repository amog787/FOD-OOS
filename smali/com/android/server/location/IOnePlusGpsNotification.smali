.class public interface abstract Lcom/android/server/location/IOnePlusGpsNotification;
.super Ljava/lang/Object;
.source "IOnePlusGpsNotification.java"


# virtual methods
.method public abstract getCurrentProviderPackageList(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/location/LocationManagerService$Receiver;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentProviderPackageListsForInteger(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/location/LocationManagerService$Receiver;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateGpsRequstPackage(Z)V
.end method
