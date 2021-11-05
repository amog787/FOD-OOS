.class public final synthetic Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$h2iz-IbnHpQ97mlJ7G62W2mmanw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$h2iz-IbnHpQ97mlJ7G62W2mmanw;->f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$h2iz-IbnHpQ97mlJ7G62W2mmanw;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$h2iz-IbnHpQ97mlJ7G62W2mmanw;->f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$h2iz-IbnHpQ97mlJ7G62W2mmanw;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceRemoved$6$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;)V

    return-void
.end method
