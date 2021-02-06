.class public final synthetic Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$IkTCYCPSwHv3PPP8etpa0xLh9Is;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$IkTCYCPSwHv3PPP8etpa0xLh9Is;->f$0:I

    iput-object p2, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$IkTCYCPSwHv3PPP8etpa0xLh9Is;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$IkTCYCPSwHv3PPP8etpa0xLh9Is;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$IkTCYCPSwHv3PPP8etpa0xLh9Is;->f$0:I

    iget-object v1, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$IkTCYCPSwHv3PPP8etpa0xLh9Is;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$IkTCYCPSwHv3PPP8etpa0xLh9Is;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/util/Set;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$removeAssociation$0(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
