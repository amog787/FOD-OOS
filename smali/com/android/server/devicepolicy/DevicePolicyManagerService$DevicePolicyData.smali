.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevicePolicyData"
.end annotation


# instance fields
.field doNotAskCredentialsOnBoot:Z

.field final mAcceptedCaCertificates:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAdminBroadcastPending:Z

.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAppsSuspended:Z

.field mCurrentInputMethodSet:Z

.field final mDelegationMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mDeviceProvisioningConfigApplied:Z

.field mFailedPasswordAttempts:I

.field mInitBundle:Landroid/os/PersistableBundle;

.field mLastBugReportRequestTime:J

.field mLastMaximumTimeToLock:J

.field mLastNetworkLogsRetrievalTime:J

.field mLastSecurityLogRetrievalTime:J

.field mLockTaskFeatures:I

.field mLockTaskPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mOwnerInstalledCaCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPaired:Z

.field mPasswordOwner:I

.field mPasswordTokenHandle:J

.field mPasswordValidAtLastCheckpoint:Z

.field mPermissionPolicy:I

.field final mRemovingAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field mRestrictionsProvider:Landroid/content/ComponentName;

.field mSecondaryLockscreenEnabled:Z

.field mStatusBarDisabled:Z

.field mUserControlDisabledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUserHandle:I

.field mUserProvisioningState:I

.field mUserSetupComplete:Z


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 795
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordValidAtLastCheckpoint:Z

    .line 798
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 799
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    .line 800
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    .line 801
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPaired:Z

    .line 805
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    .line 807
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    .line 808
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 809
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    .line 812
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    .line 815
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    .line 818
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 822
    const/16 v3, 0x10

    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskFeatures:I

    .line 824
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    .line 829
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    .line 831
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z

    .line 833
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    .line 835
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    .line 837
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastBugReportRequestTime:J

    .line 839
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    .line 841
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mCurrentInputMethodSet:Z

    .line 843
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    .line 846
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    .line 849
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminBroadcastPending:Z

    .line 850
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    .line 852
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordTokenHandle:J

    .line 856
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAppsSuspended:Z

    .line 859
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    .line 860
    return-void
.end method
