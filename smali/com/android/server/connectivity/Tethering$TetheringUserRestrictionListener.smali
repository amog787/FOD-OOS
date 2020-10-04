.class public Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TetheringUserRestrictionListener"
.end annotation


# instance fields
.field private final mWrapper:Lcom/android/server/connectivity/Tethering;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p1, "wrapper"    # Lcom/android/server/connectivity/Tethering;

    .line 1067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1068
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    .line 1069
    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .line 1074
    nop

    .line 1075
    const-string/jumbo v0, "no_config_tethering"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1076
    .local v1, "newlyDisallowed":Z
    nop

    .line 1077
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1078
    .local v0, "previouslyDisallowed":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 1080
    .local v4, "tetheringDisallowedChanged":Z
    :goto_0
    if-nez v4, :cond_1

    .line 1081
    return-void

    .line 1084
    :cond_1
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v5}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    .line 1085
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v5}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1087
    .local v2, "isTetheringActiveOnDevice":Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 1088
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    const v6, 0x108082e

    invoke-virtual {v5, v6, v3}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(IZ)V

    .line 1090
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->untetherAll()V

    .line 1092
    :cond_3
    return-void
.end method
