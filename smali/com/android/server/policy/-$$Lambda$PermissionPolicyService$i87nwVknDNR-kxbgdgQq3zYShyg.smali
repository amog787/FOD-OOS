.class public final synthetic Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$i87nwVknDNR-kxbgdgQq3zYShyg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$i87nwVknDNR-kxbgdgQq3zYShyg;->f$0:Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$i87nwVknDNR-kxbgdgQq3zYShyg;->f$0:Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v0, p1}, Lcom/android/server/policy/PermissionPolicyService;->lambda$synchronizePermissionsAndAppOpsForUser$1(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
