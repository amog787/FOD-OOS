.class public final synthetic Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$V2gOjn4rTBH_rbxagOz-eOTvNfc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$V2gOjn4rTBH_rbxagOz-eOTvNfc;->f$0:Lcom/android/server/policy/PermissionPolicyService;

    return-void
.end method


# virtual methods
.method public final onRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$V2gOjn4rTBH_rbxagOz-eOTvNfc;->f$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->lambda$V2gOjn4rTBH_rbxagOz-eOTvNfc(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V

    return-void
.end method
