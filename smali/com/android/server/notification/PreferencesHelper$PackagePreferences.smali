.class Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/PreferencesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackagePreferences"
.end annotation


# instance fields
.field bubblePreference:I

.field channels:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field defaultAppLockedImportance:Z

.field delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

.field groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field hasSentInvalidMessage:Z

.field hasSentValidMessage:Z

.field importance:I

.field lockedAppFields:I

.field oemLockedChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field oemLockedImportance:Z

.field pkg:Ljava/lang/String;

.field priority:I

.field showBadge:Z

.field uid:I

.field userDemotedMsgApp:Z

.field visibility:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2383
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 2384
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 2385
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 2386
    iput v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 2387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 2388
    iput v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    .line 2389
    iput v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 2392
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 2393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    .line 2394
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 2396
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    .line 2397
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    .line 2399
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    .line 2401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 2402
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 2403
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/PreferencesHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/PreferencesHelper$1;

    .line 2381
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidDelegate(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2406
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper$Delegate;->isAllowed(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
