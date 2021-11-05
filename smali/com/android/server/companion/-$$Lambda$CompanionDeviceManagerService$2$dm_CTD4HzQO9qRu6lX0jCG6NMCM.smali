.class public final synthetic Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$2$dm_CTD4HzQO9qRu6lX0jCG6NMCM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$2$dm_CTD4HzQO9qRu6lX0jCG6NMCM;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$2$dm_CTD4HzQO9qRu6lX0jCG6NMCM;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$2;->lambda$onPackageRemoved$1(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
