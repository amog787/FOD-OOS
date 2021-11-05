.class public abstract Landroid/os/UserManagerInternal;
.super Ljava/lang/Object;
.source "UserManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UserManagerInternal$UserRestrictionsListener;,
        Landroid/os/UserManagerInternal$OwnerType;
    }
.end annotation


# static fields
.field public static final OWNER_TYPE_DEVICE_OWNER:I = 0x0

.field public static final OWNER_TYPE_NO_OWNER:I = 0x3

.field public static final OWNER_TYPE_PROFILE_OWNER:I = 0x1

.field public static final OWNER_TYPE_PROFILE_OWNER_OF_ORGANIZATION_OWNED_DEVICE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
.end method

.method public abstract createUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation
.end method

.method public abstract exists(I)Z
.end method

.method public abstract getBaseUserRestrictions(I)Landroid/os/Bundle;
.end method

.method public abstract getProfileParentId(I)I
.end method

.method public abstract getUserIds()[I
.end method

.method public abstract getUserInfo(I)Landroid/content/pm/UserInfo;
.end method

.method public abstract getUserInfos()[Landroid/content/pm/UserInfo;
.end method

.method public abstract getUserRestriction(ILjava/lang/String;)Z
.end method

.method public abstract getUsers(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasUserRestriction(Ljava/lang/String;I)Z
.end method

.method public abstract isDeviceManaged()Z
.end method

.method public abstract isProfileAccessible(IILjava/lang/String;Z)Z
.end method

.method public abstract isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
.end method

.method public abstract isUserInitialized(I)Z
.end method

.method public abstract isUserManaged(I)Z
.end method

.method public abstract isUserRunning(I)Z
.end method

.method public abstract isUserUnlocked(I)Z
.end method

.method public abstract isUserUnlockingOrUnlocked(I)Z
.end method

.method public abstract onEphemeralUserStop(I)V
.end method

.method public abstract removeAllUsers()V
.end method

.method public abstract removeUserEvenWhenDisallowed(I)Z
.end method

.method public abstract removeUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
.end method

.method public abstract removeUserState(I)V
.end method

.method public abstract setBaseUserRestrictionsByDpmsForMigration(ILandroid/os/Bundle;)V
.end method

.method public abstract setDeviceManaged(Z)V
.end method

.method public abstract setDevicePolicyUserRestrictions(ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V
.end method

.method public abstract setForceEphemeralUsers(Z)V
.end method

.method public abstract setUserIcon(ILandroid/graphics/Bitmap;)V
.end method

.method public abstract setUserManaged(IZ)V
.end method

.method public abstract setUserState(II)V
.end method
