.class public final synthetic Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$eApyRxwI3JHTSVAxV9EbP43gFOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$eApyRxwI3JHTSVAxV9EbP43gFOo;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$eApyRxwI3JHTSVAxV9EbP43gFOo;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$eApyRxwI3JHTSVAxV9EbP43gFOo(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
