.class public abstract Lcom/android/server/policy/PermissionPolicyInternal;
.super Ljava/lang/Object;
.source "PermissionPolicyInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z
.end method

.method public abstract isInitialized(I)Z
.end method

.method public abstract setOnInitializedCallback(Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)V
.end method
