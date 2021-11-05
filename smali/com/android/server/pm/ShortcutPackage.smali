.class Lcom/android/server/pm/ShortcutPackage;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "ShortcutPackage.java"


# static fields
.field private static final ATTR_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTR_BITMAP_PATH:Ljava/lang/String; = "bitmap-path"

.field private static final ATTR_CALL_COUNT:Ljava/lang/String; = "call-count"

.field private static final ATTR_DISABLED_MESSAGE:Ljava/lang/String; = "dmessage"

.field private static final ATTR_DISABLED_MESSAGE_RES_ID:Ljava/lang/String; = "dmessageid"

.field private static final ATTR_DISABLED_MESSAGE_RES_NAME:Ljava/lang/String; = "dmessagename"

.field private static final ATTR_DISABLED_REASON:Ljava/lang/String; = "disabled-reason"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ICON_RES_ID:Ljava/lang/String; = "icon-res"

.field private static final ATTR_ICON_RES_NAME:Ljava/lang/String; = "icon-resname"

.field private static final ATTR_ICON_URI:Ljava/lang/String; = "icon-uri"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INTENT_LEGACY:Ljava/lang/String; = "intent"

.field private static final ATTR_INTENT_NO_EXTRA:Ljava/lang/String; = "intent-base"

.field private static final ATTR_LAST_RESET:Ljava/lang/String; = "last-reset"

.field private static final ATTR_LOCUS_ID:Ljava/lang/String; = "locus-id"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NAME_XMLUTILS:Ljava/lang/String; = "name"

.field private static final ATTR_PERSON_IS_BOT:Ljava/lang/String; = "is-bot"

.field private static final ATTR_PERSON_IS_IMPORTANT:Ljava/lang/String; = "is-important"

.field private static final ATTR_PERSON_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_PERSON_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PERSON_URI:Ljava/lang/String; = "uri"

.field private static final ATTR_RANK:Ljava/lang/String; = "rank"

.field private static final ATTR_TEXT:Ljava/lang/String; = "text"

.field private static final ATTR_TEXT_RES_ID:Ljava/lang/String; = "textid"

.field private static final ATTR_TEXT_RES_NAME:Ljava/lang/String; = "textname"

.field private static final ATTR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_TITLE_RES_ID:Ljava/lang/String; = "titleid"

.field private static final ATTR_TITLE_RES_NAME:Ljava/lang/String; = "titlename"

.field private static final KEY_BITMAPS:Ljava/lang/String; = "bitmaps"

.field private static final KEY_BITMAP_BYTES:Ljava/lang/String; = "bitmapBytes"

.field private static final KEY_DYNAMIC:Ljava/lang/String; = "dynamic"

.field private static final KEY_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final KEY_PINNED:Ljava/lang/String; = "pinned"

.field private static final NAME_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_INTENT_EXTRAS_LEGACY:Ljava/lang/String; = "intent-extras"

.field private static final TAG_PERSON:Ljava/lang/String; = "person"

.field static final TAG_ROOT:Ljava/lang/String; = "package"

.field private static final TAG_SHARE_TARGET:Ljava/lang/String; = "share-target"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_STRING_ARRAY_XMLUTILS:Ljava/lang/String; = "string-array"

.field private static final TAG_VERIFY:Ljava/lang/String; = "ShortcutService.verify"


# instance fields
.field private mApiCallCount:I

.field private mLastKnownForegroundElapsedTime:J

.field private mLastResetTime:J

.field private final mPackageUid:I

.field private final mShareTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/ShareTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mShortcutRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mShortcutTypeAndRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V
    .locals 1
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 168
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .locals 2
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "spi"    # Lcom/android/server/pm/ShortcutPackageInfo;

    .line 160
    nop

    .line 161
    if-eqz p4, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/pm/ShortcutPackageInfo;->newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    .line 160
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 137
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 1214
    sget-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$ZN-r6tS0M7WKGK6nbXyJZPwNRGc;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$ZN-r6tS0M7WKGK6nbXyJZPwNRGc;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    .line 1385
    sget-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$hEXnzlESoRjagj8Pd9f4PrqudKE;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$hEXnzlESoRjagj8Pd9f4PrqudKE;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    .line 163
    iget-object v0, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    .line 164
    return-void
.end method

.method private areAllActivitiesStillEnabled()Z
    .locals 7

    .line 895
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 896
    return v1

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 902
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 904
    .local v2, "checked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 905
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 906
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 908
    .local v5, "activity":Landroid/content/ComponentName;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 909
    goto :goto_1

    .line 911
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    if-eqz v5, :cond_2

    .line 914
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/ShortcutService;->injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 915
    const/4 v1, 0x0

    return v1

    .line 904
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "activity":Landroid/content/ComponentName;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 918
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method private deleteOrDisableWithId(Ljava/lang/String;ZZZI)Landroid/content/pm/ShortcutInfo;
    .locals 5
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "disable"    # Z
    .param p3, "overrideImmutable"    # Z
    .param p4, "ignoreInvisible"    # Z
    .param p5, "disabledReason"    # I

    .line 523
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ne p2, v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable and disabledReason disagree: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 526
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 528
    .local v2, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v3, 0x0

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p4, :cond_2

    .line 529
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 532
    :cond_2
    if-nez p3, :cond_3

    .line 533
    invoke-direct {p0, v2, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    .line 535
    :cond_3
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 555
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 556
    return-object v2

    .line 537
    :cond_5
    :goto_2
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 538
    const/16 v0, 0x21

    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 539
    if-eqz p2, :cond_6

    .line 540
    const/16 v0, 0x40

    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 542
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v0

    if-nez v0, :cond_6

    .line 543
    invoke-virtual {v2, p5}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 546
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 549
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->isDummyMainActivity(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 550
    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 553
    :cond_7
    return-object v3

    .line 530
    :cond_8
    :goto_3
    return-object v3
.end method

.method private disableDynamicWithId(Ljava/lang/String;ZI)Landroid/content/pm/ShortcutInfo;
    .locals 6
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "ignoreInvisible"    # Z
    .param p3, "disabledReason"    # I

    .line 473
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZI)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method private ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V
    .locals 3
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "ignoreInvisible"    # Z

    .line 234
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manifest shortcut ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " may not be manipulated via APIs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    :goto_0
    return-void
.end method

.method private forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 287
    .local v0, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->removeIconLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 289
    const v1, 0x40004023

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 292
    :cond_0
    return-object v0
.end method

.method private forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V
    .locals 3
    .param p1, "newShortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 300
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 302
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 305
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcutLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 306
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 307
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    return-void
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 883
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 884
    .local v0, "sep":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 885
    return-object p0

    .line 887
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V
    .locals 2
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "increment"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/ComponentName;",
            "I)V"
        }
    .end annotation

    .line 1257
    .local p1, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1258
    .local v0, "oldValue":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1259
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1262
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    return-void
.end method

.method static synthetic lambda$new$1(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 2
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    .line 1216
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1217
    const/4 v0, -0x1

    return v0

    .line 1219
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1220
    const/4 v0, 0x1

    return v0

    .line 1222
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$2(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 3
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    .line 1387
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1388
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 1389
    return v0

    .line 1396
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1397
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1401
    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1402
    if-eqz v0, :cond_3

    .line 1403
    return v0

    .line 1408
    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method static synthetic lambda$verifyStates$3(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 2
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    .line 2026
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$verifyStates$4(Landroid/content/pm/ShortcutInfo;)Z
    .locals 1
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 2030
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$verifyStates$5(Landroid/content/pm/ShortcutInfo;)Z
    .locals 1
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 2033
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static loadFromFile(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Ljava/io/File;Z)Lcom/android/server/pm/ShortcutPackage;
    .locals 10
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "fromBackup"    # Z

    .line 1725
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1728
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1734
    .local v2, "in":Ljava/io/FileInputStream;
    nop

    .line 1737
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1739
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 1740
    .local v4, "ret":Lcom/android/server/pm/ShortcutPackage;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1741
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1744
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_2

    .line 1745
    const/4 v6, 0x2

    if-eq v7, v6, :cond_0

    .line 1746
    goto :goto_0

    .line 1748
    :cond_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 1750
    .local v6, "depth":I
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1754
    .local v9, "tag":Ljava/lang/String;
    if-ne v6, v8, :cond_1

    const-string/jumbo v8, "package"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1755
    invoke-static {p0, p1, v5, p3}, Lcom/android/server/pm/ShortcutPackage;->loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v8

    move-object v4, v8

    .line 1756
    goto :goto_0

    .line 1758
    :cond_1
    invoke-static {v6, v9}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1759
    nop

    .end local v6    # "depth":I
    .end local v9    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 1760
    :cond_2
    nop

    .line 1765
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1760
    return-object v4

    .line 1765
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "ret":Lcom/android/server/pm/ShortcutPackage;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1761
    :catch_0
    move-exception v3

    .line 1762
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ShortcutService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1763
    nop

    .line 1765
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1763
    return-object v1

    .line 1765
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1766
    throw v1

    .line 1729
    .end local v2    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 1733
    .local v2, "e":Ljava/io/FileNotFoundException;
    return-object v1
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;
    .locals 11
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1773
    const-string/jumbo v0, "name"

    invoke-static {p2, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1776
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Lcom/android/server/pm/ShortcutPackage;

    .line 1777
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v2

    invoke-direct {v1, p1, v2, v0}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    .line 1779
    .local v1, "ret":Lcom/android/server/pm/ShortcutPackage;
    nop

    .line 1780
    const-string v2, "call-count"

    invoke-static {p2, v2}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 1781
    nop

    .line 1782
    const-string/jumbo v2, "last-reset"

    invoke-static {p2, v2}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 1785
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1787
    .local v2, "outerDepth":I
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_a

    const/4 v3, 0x3

    if-ne v4, v3, :cond_0

    .line 1788
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_a

    .line 1789
    :cond_0
    const/4 v3, 0x2

    if-eq v4, v3, :cond_1

    .line 1790
    goto :goto_0

    .line 1792
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 1793
    .local v6, "depth":I
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1794
    .local v7, "tag":Ljava/lang/String;
    add-int/lit8 v8, v2, 0x1

    if-ne v6, v8, :cond_9

    .line 1795
    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x72a5f22b

    if-eq v9, v10, :cond_5

    const v10, -0x642f3cc1

    if-eq v9, v10, :cond_4

    const v10, -0x146a23ba

    if-eq v9, v10, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string/jumbo v9, "shortcut"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v8, v5

    goto :goto_1

    :cond_4
    const-string/jumbo v9, "share-target"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v8, v3

    goto :goto_1

    :cond_5
    const-string/jumbo v9, "package-info"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_8

    if-eq v8, v5, :cond_7

    if-eq v8, v3, :cond_6

    goto :goto_2

    .line 1808
    :cond_6
    iget-object v3, v1, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/android/server/pm/ShareTargetInfo;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/ShareTargetInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1809
    goto :goto_0

    .line 1801
    :cond_7
    nop

    .line 1802
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v3

    .line 1801
    invoke-static {p2, v0, v3, p3}, Lcom/android/server/pm/ShortcutPackage;->parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 1805
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    iget-object v5, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    goto :goto_0

    .line 1797
    .end local v3    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_8
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 1799
    goto/16 :goto_0

    .line 1812
    :cond_9
    :goto_2
    invoke-static {v6, v7}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    .line 1813
    .end local v6    # "depth":I
    .end local v7    # "tag":Ljava/lang/String;
    goto/16 :goto_0

    .line 1814
    :cond_a
    return-object v1
.end method

.method private static parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1954
    const-string/jumbo v0, "intent-base"

    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseIntentAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1957
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1959
    .local v1, "outerDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v2, 0x3

    if-ne v3, v2, :cond_0

    .line 1960
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_5

    .line 1961
    :cond_0
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    .line 1962
    goto :goto_0

    .line 1964
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1965
    .local v2, "depth":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1970
    .local v4, "tag":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x4cd5119d

    if-eq v6, v7, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v6, "extras"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_4

    .line 1972
    nop

    .line 1973
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 1972
    invoke-static {v0, v5}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    .line 1974
    goto :goto_0

    .line 1976
    :cond_4
    invoke-static {v2, v4}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1978
    .end local v2    # "depth":I
    .end local v4    # "tag":Ljava/lang/String;
    :cond_5
    return-object v0
.end method

.method private static parsePerson(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/Person;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1983
    const-string/jumbo v0, "name"

    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1984
    .local v0, "name":Ljava/lang/CharSequence;
    const-string/jumbo v1, "uri"

    invoke-static {p0, v1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1985
    .local v1, "uri":Ljava/lang/String;
    const-string/jumbo v2, "key"

    invoke-static {p0, v2}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1986
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "is-bot"

    invoke-static {p0, v3}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 1987
    .local v3, "isBot":Z
    const-string/jumbo v4, "is-important"

    invoke-static {p0, v4}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    .line 1990
    .local v4, "isImportant":Z
    new-instance v5, Landroid/app/Person$Builder;

    invoke-direct {v5}, Landroid/app/Person$Builder;-><init>()V

    .line 1991
    .local v5, "builder":Landroid/app/Person$Builder;
    invoke-virtual {v5, v0}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    .line 1992
    invoke-virtual {v5}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v6

    return-object v6
.end method

.method private static parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;
    .locals 60
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1834
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1835
    .local v1, "intentPersistableExtrasLegacy":Landroid/os/PersistableBundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1837
    .local v2, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const/4 v3, 0x0

    .line 1846
    .local v3, "extras":Landroid/os/PersistableBundle;
    const/4 v4, 0x0

    .line 1847
    .local v4, "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    .local v5, "persons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    const-string v6, "id"

    invoke-static {v0, v6}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1850
    .local v6, "id":Ljava/lang/String;
    const-string v7, "activity"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v36

    .line 1852
    .local v36, "activityComponent":Landroid/content/ComponentName;
    const-string/jumbo v7, "title"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1853
    .local v37, "title":Ljava/lang/String;
    const-string/jumbo v7, "titleid"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v38

    .line 1854
    .local v38, "titleResId":I
    const-string/jumbo v7, "titlename"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1855
    .local v39, "titleResName":Ljava/lang/String;
    const-string/jumbo v7, "text"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1856
    .local v40, "text":Ljava/lang/String;
    const-string/jumbo v7, "textid"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v41

    .line 1857
    .local v41, "textResId":I
    const-string/jumbo v7, "textname"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1858
    .local v42, "textResName":Ljava/lang/String;
    const-string v7, "dmessage"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1859
    .local v43, "disabledMessage":Ljava/lang/String;
    const-string v7, "dmessageid"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v44

    .line 1861
    .local v44, "disabledMessageResId":I
    const-string v7, "dmessagename"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1863
    .local v45, "disabledMessageResName":Ljava/lang/String;
    const-string v7, "disabled-reason"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    .line 1864
    .local v7, "disabledReason":I
    const-string/jumbo v8, "intent"

    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 1865
    .local v15, "intentLegacy":Landroid/content/Intent;
    const-string/jumbo v9, "rank"

    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v9

    long-to-int v14, v9

    .line 1866
    .local v14, "rank":I
    const-string/jumbo v9, "timestamp"

    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v46

    .line 1867
    .local v46, "lastChangedTimestamp":J
    const-string v9, "flags"

    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v9

    long-to-int v9, v9

    .line 1868
    .local v9, "flags":I
    const-string v10, "icon-res"

    invoke-static {v0, v10}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v13, v10

    .line 1869
    .local v13, "iconResId":I
    const-string v10, "icon-resname"

    invoke-static {v0, v10}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1870
    .local v48, "iconResName":Ljava/lang/String;
    const-string v10, "bitmap-path"

    invoke-static {v0, v10}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 1871
    .local v49, "bitmapPath":Ljava/lang/String;
    const-string v10, "icon-uri"

    invoke-static {v0, v10}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1872
    .local v50, "iconUri":Ljava/lang/String;
    const-string/jumbo v10, "locus-id"

    invoke-static {v0, v10}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1874
    .local v11, "locusIdString":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 1876
    .local v10, "outerDepth":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move/from16 v51, v12

    move/from16 v16, v13

    .end local v13    # "iconResId":I
    .local v16, "iconResId":I
    .local v51, "type":I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_c

    const/4 v12, 0x3

    move/from16 v13, v51

    .end local v51    # "type":I
    .local v13, "type":I
    if-ne v13, v12, :cond_1

    .line 1877
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v10, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v51, v3

    move/from16 v21, v10

    move/from16 v24, v13

    move/from16 v25, v14

    const/4 v3, 0x0

    goto/16 :goto_6

    .line 1878
    :cond_1
    :goto_1
    const/4 v12, 0x2

    if-eq v13, v12, :cond_2

    .line 1879
    move-object/from16 v51, v3

    move-object/from16 v22, v8

    move/from16 v21, v10

    move/from16 v25, v14

    goto/16 :goto_5

    .line 1881
    :cond_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .line 1882
    .local v12, "depth":I
    move/from16 v21, v10

    .end local v10    # "outerDepth":I
    .local v21, "outerDepth":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1887
    .local v10, "tag":Ljava/lang/String;
    const/16 v22, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v23

    move/from16 v24, v13

    .end local v13    # "type":I
    .local v24, "type":I
    const-string v13, "categories"

    move/from16 v25, v14

    .end local v14    # "rank":I
    .local v25, "rank":I
    const-string/jumbo v14, "string-array"

    move-object/from16 v51, v3

    .end local v3    # "extras":Landroid/os/PersistableBundle;
    .local v51, "extras":Landroid/os/PersistableBundle;
    sparse-switch v23, :sswitch_data_0

    :cond_3
    goto :goto_2

    :sswitch_0
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    const/4 v3, 0x3

    goto :goto_3

    :sswitch_1
    const-string/jumbo v3, "person"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    goto :goto_3

    :sswitch_2
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    goto :goto_3

    :sswitch_3
    const-string/jumbo v3, "intent-extras"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v22, 0x0

    goto :goto_2

    :sswitch_4
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :sswitch_5
    const-string v3, "extras"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_3

    :goto_2
    move/from16 v3, v22

    :goto_3
    if-eqz v3, :cond_b

    move-object/from16 v22, v8

    const/4 v8, 0x1

    if-eq v3, v8, :cond_9

    const/4 v8, 0x2

    if-eq v3, v8, :cond_8

    const/4 v8, 0x3

    if-eq v3, v8, :cond_7

    const/4 v8, 0x4

    if-eq v3, v8, :cond_6

    const/4 v8, 0x5

    if-ne v3, v8, :cond_5

    .line 1904
    const-string/jumbo v3, "name"

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1906
    const/4 v3, 0x0

    invoke-static {v0, v14, v3}, Lcom/android/internal/util/XmlUtils;->readThisStringArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1908
    .local v3, "ar":[Ljava/lang/String;
    new-instance v8, Landroid/util/ArraySet;

    array-length v13, v3

    invoke-direct {v8, v13}, Landroid/util/ArraySet;-><init>(I)V

    move-object v4, v8

    .line 1909
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    array-length v13, v3

    if-ge v8, v13, :cond_4

    .line 1910
    aget-object v13, v3, v8

    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1909
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1912
    .end local v3    # "ar":[Ljava/lang/String;
    .end local v8    # "i":I
    :cond_4
    move/from16 v13, v16

    move/from16 v10, v21

    move-object/from16 v8, v22

    move/from16 v14, v25

    move-object/from16 v3, v51

    goto/16 :goto_0

    .line 1915
    :cond_5
    invoke-static {v12, v10}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 1901
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->parsePerson(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/Person;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1902
    goto :goto_5

    .line 1899
    :cond_7
    goto :goto_5

    .line 1895
    :cond_8
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 1896
    .end local v51    # "extras":Landroid/os/PersistableBundle;
    .local v3, "extras":Landroid/os/PersistableBundle;
    move/from16 v13, v16

    move/from16 v10, v21

    move-object/from16 v8, v22

    move/from16 v14, v25

    goto/16 :goto_0

    .line 1892
    .end local v3    # "extras":Landroid/os/PersistableBundle;
    .restart local v51    # "extras":Landroid/os/PersistableBundle;
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1893
    nop

    .line 1876
    .end local v12    # "depth":I
    .end local v21    # "outerDepth":I
    .end local v24    # "type":I
    .end local v25    # "rank":I
    .end local v51    # "extras":Landroid/os/PersistableBundle;
    .restart local v3    # "extras":Landroid/os/PersistableBundle;
    .local v10, "outerDepth":I
    .restart local v14    # "rank":I
    :cond_a
    :goto_5
    move/from16 v13, v16

    move/from16 v10, v21

    move-object/from16 v8, v22

    move/from16 v14, v25

    move-object/from16 v3, v51

    .end local v3    # "extras":Landroid/os/PersistableBundle;
    .end local v10    # "outerDepth":I
    .end local v14    # "rank":I
    .restart local v21    # "outerDepth":I
    .restart local v25    # "rank":I
    .restart local v51    # "extras":Landroid/os/PersistableBundle;
    goto/16 :goto_0

    .line 1889
    .local v10, "tag":Ljava/lang/String;
    .restart local v12    # "depth":I
    .restart local v24    # "type":I
    :cond_b
    move-object/from16 v22, v8

    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1890
    move/from16 v13, v16

    move/from16 v10, v21

    move/from16 v14, v25

    move-object/from16 v3, v51

    goto/16 :goto_0

    .line 1876
    .end local v12    # "depth":I
    .end local v21    # "outerDepth":I
    .end local v24    # "type":I
    .end local v25    # "rank":I
    .restart local v3    # "extras":Landroid/os/PersistableBundle;
    .local v10, "outerDepth":I
    .restart local v14    # "rank":I
    .local v51, "type":I
    :cond_c
    move/from16 v21, v10

    move/from16 v25, v14

    move/from16 v24, v51

    move-object/from16 v51, v3

    const/4 v3, 0x0

    .line 1918
    .end local v3    # "extras":Landroid/os/PersistableBundle;
    .end local v10    # "outerDepth":I
    .end local v14    # "rank":I
    .restart local v21    # "outerDepth":I
    .restart local v24    # "type":I
    .restart local v25    # "rank":I
    .local v51, "extras":Landroid/os/PersistableBundle;
    :goto_6
    if-eqz v15, :cond_d

    .line 1920
    invoke-static {v15, v1}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    .line 1921
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1922
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1926
    :cond_d
    if-nez v7, :cond_e

    and-int/lit8 v8, v9, 0x40

    if-eqz v8, :cond_e

    .line 1930
    const/4 v7, 0x1

    move/from16 v52, v7

    goto :goto_7

    .line 1934
    :cond_e
    move/from16 v52, v7

    .end local v7    # "disabledReason":I
    .local v52, "disabledReason":I
    :goto_7
    if-eqz p3, :cond_f

    .line 1935
    or-int/lit16 v9, v9, 0x1000

    move/from16 v53, v9

    goto :goto_8

    .line 1934
    :cond_f
    move/from16 v53, v9

    .line 1938
    .end local v9    # "flags":I
    .local v53, "flags":I
    :goto_8
    if-nez v11, :cond_10

    goto :goto_9

    :cond_10
    new-instance v3, Landroid/content/LocusId;

    invoke-direct {v3, v11}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    :goto_9
    move-object/from16 v35, v3

    .line 1940
    .local v35, "locusId":Landroid/content/LocusId;
    new-instance v3, Landroid/content/pm/ShortcutInfo;

    move-object v7, v3

    const/4 v12, 0x0

    .line 1945
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroid/content/Intent;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v23, v8

    check-cast v23, [Landroid/content/Intent;

    .line 1948
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroid/app/Person;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v34, v8

    check-cast v34, [Landroid/app/Person;

    move/from16 v8, p2

    move-object v9, v6

    move/from16 v54, v21

    .end local v21    # "outerDepth":I
    .local v54, "outerDepth":I
    move-object/from16 v10, p1

    move-object/from16 v55, v11

    .end local v11    # "locusIdString":Ljava/lang/String;
    .local v55, "locusIdString":Ljava/lang/String;
    move-object/from16 v11, v36

    move/from16 v56, v16

    move/from16 v57, v24

    .end local v16    # "iconResId":I
    .end local v24    # "type":I
    .local v56, "iconResId":I
    .local v57, "type":I
    move-object/from16 v13, v37

    move/from16 v58, v25

    .end local v25    # "rank":I
    .local v58, "rank":I
    move/from16 v14, v38

    move-object/from16 v59, v15

    .end local v15    # "intentLegacy":Landroid/content/Intent;
    .local v59, "intentLegacy":Landroid/content/Intent;
    move-object/from16 v15, v39

    move-object/from16 v16, v40

    move/from16 v17, v41

    move-object/from16 v18, v42

    move-object/from16 v19, v43

    move/from16 v20, v44

    move-object/from16 v21, v45

    move-object/from16 v22, v4

    move/from16 v24, v58

    move-object/from16 v25, v51

    move-wide/from16 v26, v46

    move/from16 v28, v53

    move/from16 v29, v56

    move-object/from16 v30, v48

    move-object/from16 v31, v49

    move-object/from16 v32, v50

    move/from16 v33, v52

    invoke-direct/range {v7 .. v35}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;)V

    .line 1940
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4cd5119d -> :sswitch_5
        -0x468ec964 -> :sswitch_4
        -0x3e3f454c -> :sswitch_3
        -0x3d122a63 -> :sswitch_2
        -0x3b1c64ab -> :sswitch_1
        0x4d47461c -> :sswitch_0
    .end sparse-switch
.end method

.method private publishManifestShortcuts(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1083
    .local p1, "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    .line 1086
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 1087
    .local v1, "toDisableList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1088
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 1090
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1091
    if-nez v1, :cond_0

    .line 1092
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v4

    .line 1094
    :cond_0
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1087
    .end local v3    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1099
    .end local v2    # "i":I
    :cond_2
    if-eqz p1, :cond_7

    .line 1100
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1102
    .local v2, "newListSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_7

    .line 1103
    const/4 v0, 0x1

    .line 1105
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1106
    .local v4, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 1108
    .local v5, "newDisabled":Z
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 1109
    .local v6, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 1111
    .local v7, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v8, 0x0

    .line 1113
    .local v8, "wasPinned":Z
    if-eqz v7, :cond_4

    .line 1114
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1115
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Shortcut with ID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " exists but is not from AndroidManifest.xml, not updating."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ShortcutService"

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    goto :goto_2

    .line 1120
    :cond_3
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1121
    const/4 v8, 0x1

    .line 1122
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 1125
    :cond_4
    if-eqz v5, :cond_5

    if-nez v8, :cond_5

    .line 1129
    goto :goto_2

    .line 1134
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 1136
    if-nez v5, :cond_6

    if-eqz v1, :cond_6

    .line 1138
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1102
    .end local v4    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "newDisabled":Z
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "oldShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v8    # "wasPinned":Z
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1144
    .end local v2    # "newListSize":I
    .end local v3    # "i":I
    :cond_7
    if-eqz v1, :cond_9

    .line 1150
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_8

    .line 1151
    const/4 v0, 0x1

    .line 1153
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1155
    .local v3, "id":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/ShortcutPackage;->disableWithId(Ljava/lang/String;Ljava/lang/String;IZZI)Landroid/content/pm/ShortcutInfo;

    .line 1150
    .end local v3    # "id":Ljava/lang/String;
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1159
    .end local v2    # "i":I
    :cond_8
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()Ljava/util/List;

    .line 1161
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 1162
    return v0
.end method

.method private pushOutExcessShortcuts()Z
    .locals 10

    .line 1170
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1171
    .local v0, "service":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v1

    .line 1173
    .local v1, "maxShortcuts":I
    const/4 v2, 0x0

    .line 1175
    .local v2, "changed":Z
    nop

    .line 1176
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1177
    .local v3, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "outer":I
    :goto_0
    if-ltz v4, :cond_3

    .line 1178
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1179
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v1, :cond_0

    .line 1180
    goto :goto_3

    .line 1183
    :cond_0
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1186
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    .local v7, "inner":I
    :goto_1
    if-lt v7, v1, :cond_2

    .line 1187
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    .line 1189
    .local v8, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1192
    const-string v9, "Found manifest shortcuts in excess list."

    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1193
    goto :goto_2

    .line 1195
    :cond_1
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v5}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;Z)Landroid/content/pm/ShortcutInfo;

    .line 1186
    .end local v8    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1177
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v7    # "inner":I
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1199
    .end local v4    # "outer":I
    :cond_3
    return v2
.end method

.method private removeOrphans()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 405
    const/4 v0, 0x0

    .line 407
    .local v0, "removeList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 408
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 410
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 412
    :cond_0
    if-nez v0, :cond_1

    .line 413
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 415
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 417
    .end local v1    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    .line 418
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 419
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 418
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 423
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method private saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;ZZ)V
    .locals 16
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "si"    # Landroid/content/pm/ShortcutInfo;
    .param p3, "forBackup"    # Z
    .param p4, "appSupportsBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1608
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1610
    .local v2, "s":Lcom/android/server/pm/ShortcutService;
    if-eqz p3, :cond_1

    .line 1611
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1615
    :cond_0
    return-void

    .line 1618
    :cond_1
    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 1624
    .local v3, "shouldBackupDetails":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1625
    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Lcom/android/server/pm/ShortcutService;->removeIconLocked(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_2

    .line 1624
    :cond_4
    move-object/from16 v4, p2

    .line 1627
    :goto_2
    const/4 v5, 0x0

    const-string/jumbo v6, "shortcut"

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1628
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    invoke-static {v0, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1630
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v7

    const-string v8, "activity"

    invoke-static {v0, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 1632
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    const-string/jumbo v8, "title"

    invoke-static {v0, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1633
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getTitleResId()I

    move-result v7

    int-to-long v7, v7

    const-string/jumbo v9, "titleid"

    invoke-static {v0, v9, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1634
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getTitleResName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "titlename"

    invoke-static {v0, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1635
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    const-string/jumbo v8, "text"

    invoke-static {v0, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1636
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getTextResId()I

    move-result v7

    int-to-long v7, v7

    const-string/jumbo v9, "textid"

    invoke-static {v0, v9, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1637
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getTextResName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "textname"

    invoke-static {v0, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1638
    if-eqz v3, :cond_5

    .line 1639
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v7

    const-string v8, "dmessage"

    invoke-static {v0, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1640
    nop

    .line 1641
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResourceId()I

    move-result v7

    int-to-long v7, v7

    .line 1640
    const-string v9, "dmessageid"

    invoke-static {v0, v9, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1642
    nop

    .line 1643
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResName()Ljava/lang/String;

    move-result-object v7

    .line 1642
    const-string v8, "dmessagename"

    invoke-static {v0, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1645
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v7

    int-to-long v7, v7

    const-string v9, "disabled-reason"

    invoke-static {v0, v9, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1646
    nop

    .line 1647
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v7

    .line 1646
    const-string/jumbo v9, "timestamp"

    invoke-static {v0, v9, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1648
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v7

    .line 1649
    .local v7, "locusId":Landroid/content/LocusId;
    if-eqz v7, :cond_6

    .line 1650
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "locus-id"

    invoke-static {v0, v9, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1652
    :cond_6
    const-string v8, "flags"

    if-eqz p3, :cond_8

    .line 1655
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v9

    const v10, -0x8a0e

    and-int/2addr v9, v10

    .line 1660
    .local v9, "flags":I
    int-to-long v10, v9

    invoke-static {v0, v8, v10, v11}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1663
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v10

    .line 1664
    .local v10, "packageVersionCode":J
    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-nez v8, :cond_7

    .line 1665
    const-string v8, "Package version code should be available at this point."

    invoke-virtual {v2, v8}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1668
    .end local v9    # "flags":I
    .end local v10    # "packageVersionCode":J
    :cond_7
    goto :goto_3

    .line 1671
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v9

    int-to-long v9, v9

    const-string/jumbo v11, "rank"

    invoke-static {v0, v11, v9, v10}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1673
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v9

    int-to-long v9, v9

    invoke-static {v0, v8, v9, v10}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1674
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v8

    int-to-long v8, v8

    const-string v10, "icon-res"

    invoke-static {v0, v10, v8, v9}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1675
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getIconResName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "icon-resname"

    invoke-static {v0, v9, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1676
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "bitmap-path"

    invoke-static {v0, v9, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1677
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getIconUri()Ljava/lang/String;

    move-result-object v8

    const-string v9, "icon-uri"

    invoke-static {v0, v9, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1680
    :goto_3
    if-eqz v3, :cond_c

    .line 1682
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 1683
    .local v8, "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_9

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    if-lez v9, :cond_9

    .line 1684
    const-string v9, "categories"

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1685
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-static {v10, v9, v0}, Lcom/android/internal/util/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1687
    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1690
    .end local v8    # "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    if-nez p3, :cond_a

    .line 1691
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v8

    .line 1692
    .local v8, "persons":[Landroid/app/Person;
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1693
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    array-length v10, v8

    if-ge v9, v10, :cond_a

    .line 1694
    aget-object v10, v8, v9

    .line 1696
    .local v10, "p":Landroid/app/Person;
    const-string/jumbo v11, "person"

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1697
    invoke-virtual {v10}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v12

    const-string/jumbo v13, "name"

    invoke-static {v0, v13, v12}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1698
    invoke-virtual {v10}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "uri"

    invoke-static {v0, v13, v12}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1699
    invoke-virtual {v10}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "key"

    invoke-static {v0, v13, v12}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1700
    invoke-virtual {v10}, Landroid/app/Person;->isBot()Z

    move-result v12

    const-string/jumbo v13, "is-bot"

    invoke-static {v0, v13, v12}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1701
    invoke-virtual {v10}, Landroid/app/Person;->isImportant()Z

    move-result v12

    const-string/jumbo v13, "is-important"

    invoke-static {v0, v13, v12}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1702
    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1693
    .end local v10    # "p":Landroid/app/Person;
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1706
    .end local v8    # "persons":[Landroid/app/Person;
    .end local v9    # "i":I
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getIntentsNoExtras()[Landroid/content/Intent;

    move-result-object v8

    .line 1707
    .local v8, "intentsNoExtras":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getIntentPersistableExtrases()[Landroid/os/PersistableBundle;

    move-result-object v9

    .line 1708
    .local v9, "intentsExtras":[Landroid/os/PersistableBundle;
    array-length v10, v8

    .line 1709
    .local v10, "numIntents":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    const-string v12, "extras"

    if-ge v11, v10, :cond_b

    .line 1710
    const-string/jumbo v13, "intent"

    invoke-interface {v0, v5, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1711
    aget-object v14, v8, v11

    const-string/jumbo v15, "intent-base"

    invoke-static {v0, v15, v14}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1712
    aget-object v14, v9, v11

    invoke-static {v0, v12, v14}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1713
    invoke-interface {v0, v5, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1709
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1716
    .end local v11    # "i":I
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v11

    invoke-static {v0, v12, v11}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1719
    .end local v8    # "intentsNoExtras":[Landroid/content/Intent;
    .end local v9    # "intentsExtras":[Landroid/os/PersistableBundle;
    .end local v10    # "numIntents":I
    :cond_c
    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1720
    return-void
.end method

.method private sortShortcutsToActivities()Landroid/util/ArrayMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;>;"
        }
    .end annotation

    .line 1230
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1232
    .local v0, "activitiesToShortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 1233
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 1234
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1235
    goto :goto_1

    .line 1238
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 1239
    .local v3, "activity":Landroid/content/ComponentName;
    if-nez v3, :cond_1

    .line 1240
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v4, v4, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    const-string/jumbo v5, "null activity detected."

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1241
    goto :goto_1

    .line 1244
    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1245
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    if-nez v4, :cond_2

    .line 1246
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 1247
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    :cond_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v3    # "activity":Landroid/content/ComponentName;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1251
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method private verifyRanksSequential(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2119
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    .line 2121
    .local v0, "failed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2122
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 2123
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 2124
    const/4 v0, 0x1

    .line 2125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": shortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " rank="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but expected to be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2125
    const-string v4, "ShortcutService.verify"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2129
    .end local v1    # "i":I
    :cond_1
    return v0
.end method


# virtual methods
.method public addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)Z
    .locals 5
    .param p1, "newShortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 320
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string v1, "add/setDynamicShortcuts() cannot publish disabled shortcuts"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 323
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 325
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 326
    .local v1, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V

    .line 332
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v3

    const v4, 0x40004002

    and-int/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 336
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 337
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0
.end method

.method public adjustRanks()V
    .locals 12

    .line 1415
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1416
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    .line 1419
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1420
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1421
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1422
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1423
    invoke-virtual {v4, v1, v2}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1424
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 1419
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1433
    .end local v3    # "i":I
    :cond_1
    nop

    .line 1434
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1435
    .local v3, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "outer":I
    :goto_1
    if-ltz v4, :cond_6

    .line 1436
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1439
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1441
    const/4 v6, 0x0

    .line 1443
    .local v6, "rank":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1444
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v7, :cond_5

    .line 1445
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 1446
    .local v9, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1448
    goto :goto_3

    .line 1451
    :cond_2
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1452
    const-string v10, "Non-dynamic shortcut found."

    invoke-virtual {v0, v10}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1453
    goto :goto_3

    .line 1455
    :cond_3
    add-int/lit8 v10, v6, 0x1

    .line 1456
    .local v6, "thisRank":I
    .local v10, "rank":I
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v11

    if-eq v11, v6, :cond_4

    .line 1457
    invoke-virtual {v9, v1, v2}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1458
    invoke-virtual {v9, v6}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 1444
    .end local v6    # "thisRank":I
    .end local v9    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_4
    move v6, v10

    .end local v10    # "rank":I
    .local v6, "rank":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1435
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v6    # "rank":I
    .end local v7    # "size":I
    .end local v8    # "i":I
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1462
    .end local v4    # "outer":I
    :cond_6
    return-void
.end method

.method protected canRestoreAnyVersion()Z
    .locals 1

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public clearAllImplicitRanks()V
    .locals 2

    .line 1376
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1377
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 1378
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->clearImplicitRankAndRankChangedFlag()V

    .line 1376
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1380
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public deleteAllDynamicShortcuts(Z)Ljava/util/List;
    .locals 7
    .param p1, "ignoreInvisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    .line 434
    .local v0, "now":J
    const/4 v2, 0x0

    .line 435
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 436
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 437
    .local v5, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 438
    :cond_0
    const/4 v2, 0x1

    .line 440
    invoke-virtual {v5, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 441
    invoke-virtual {v5, v4}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 442
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 435
    .end local v5    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 445
    .end local v3    # "i":I
    :cond_2
    if-eqz v2, :cond_3

    .line 446
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 448
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method public deleteDynamicWithId(Ljava/lang/String;Z)Landroid/content/pm/ShortcutInfo;
    .locals 6
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "ignoreInvisible"    # Z

    .line 459
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZI)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public deleteLongLivedWithId(Ljava/lang/String;Z)Landroid/content/pm/ShortcutInfo;
    .locals 8
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "ignoreInvisible"    # Z

    .line 484
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 485
    .local v0, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    .line 486
    const v1, 0x40004000    # 2.0039062f

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 488
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZI)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    return-object v1
.end method

.method public disableWithId(Ljava/lang/String;Ljava/lang/String;IZZI)Landroid/content/pm/ShortcutInfo;
    .locals 6
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "disabledMessage"    # Ljava/lang/String;
    .param p3, "disabledMessageResId"    # I
    .param p4, "overrideImmutable"    # Z
    .param p5, "ignoreInvisible"    # Z
    .param p6, "disabledReason"    # I

    .line 503
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZI)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 507
    .local v0, "deleted":Landroid/content/pm/ShortcutInfo;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 508
    .local v1, "disabled":Landroid/content/pm/ShortcutInfo;
    if-eqz v1, :cond_1

    .line 509
    if-eqz p2, :cond_0

    .line 510
    invoke-virtual {v1, p2}, Landroid/content/pm/ShortcutInfo;->setDisabledMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_0
    if-eqz p3, :cond_1

    .line 512
    invoke-virtual {v1, p3}, Landroid/content/pm/ShortcutInfo;->setDisabledMessageResId(I)V

    .line 513
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 517
    :cond_1
    :goto_0
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/pm/ShortcutService$DumpFilter;

    .line 1476
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1478
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1479
    const-string v0, "Package: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1481
    const-string v0, "  UID: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1482
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1483
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1485
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1486
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1487
    const-string v1, "Calls: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1488
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1489
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1492
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1493
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1494
    const-string v1, "Last known FG: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1495
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1496
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1499
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1501
    const-string v1, "Last reset: ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1502
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1503
    const-string v1, "] "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1504
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1507
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1508
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1510
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1511
    const-string v1, "  Shortcuts:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    const-wide/16 v1, 0x0

    .line 1513
    .local v1, "totalBitmapSize":J
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 1514
    .local v3, "shortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1515
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 1516
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    .line 1517
    .local v6, "si":Landroid/content/pm/ShortcutInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1519
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 1520
    .local v7, "len":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1521
    const-string v9, "      "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1522
    const-string v9, "bitmap size="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1523
    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 1525
    add-long/2addr v1, v7

    .line 1515
    .end local v6    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v7    # "len":J
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1528
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1530
    const-string v0, "Total bitmap size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1531
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1532
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1533
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1534
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1535
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .locals 13
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1539
    invoke-super {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 1541
    .local v0, "result":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 1542
    .local v1, "numDynamic":I
    const/4 v2, 0x0

    .line 1543
    .local v2, "numPinned":I
    const/4 v3, 0x0

    .line 1544
    .local v3, "numManifest":I
    const/4 v4, 0x0

    .line 1545
    .local v4, "numBitmaps":I
    const-wide/16 v5, 0x0

    .line 1547
    .local v5, "totalBitmapSize":J
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 1548
    .local v7, "shortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 1549
    .local v8, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_4

    .line 1550
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ShortcutInfo;

    .line 1552
    .local v10, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v11

    if-eqz v11, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 1553
    :cond_0
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v11

    if-eqz v11, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 1554
    :cond_1
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1556
    :cond_2
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 1557
    add-int/lit8 v4, v4, 0x1

    .line 1558
    new-instance v11, Ljava/io/File;

    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v11

    add-long/2addr v5, v11

    .line 1549
    .end local v10    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1562
    .end local v9    # "i":I
    :cond_4
    const-string v9, "dynamic"

    invoke-virtual {v0, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1563
    const-string/jumbo v9, "manifest"

    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1564
    const-string/jumbo v9, "pinned"

    invoke-virtual {v0, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1565
    const-string v9, "bitmaps"

    invoke-virtual {v0, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1566
    const-string v9, "bitmapBytes"

    invoke-virtual {v0, v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1570
    return-object v0
.end method

.method public enableWithId(Ljava/lang/String;)V
    .locals 2
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 562
    .local v0, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    .line 563
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    .line 564
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 565
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 567
    :cond_0
    return-void
.end method

.method public enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V
    .locals 9
    .param p2, "operation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1280
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1285
    .local v0, "service":Lcom/android/server/pm/ShortcutService;
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1286
    .local v1, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1287
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1289
    .local v4, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1290
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 1291
    :cond_0
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p2, :cond_1

    .line 1292
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1286
    .end local v4    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1296
    .end local v2    # "i":I
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_9

    .line 1297
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1298
    .local v4, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 1299
    .local v5, "newActivity":Landroid/content/ComponentName;
    const/4 v6, 0x2

    if-nez v5, :cond_3

    .line 1300
    if-eq p2, v6, :cond_8

    .line 1301
    const-string v6, "Activity must not be null at this point"

    invoke-virtual {v0, v6}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1302
    goto :goto_3

    .line 1307
    :cond_3
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 1308
    .local v7, "original":Landroid/content/pm/ShortcutInfo;
    if-nez v7, :cond_5

    .line 1309
    if-ne p2, v6, :cond_4

    .line 1310
    goto :goto_3

    .line 1314
    :cond_4
    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1315
    goto :goto_3

    .line 1317
    :cond_5
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_6

    if-ne p2, v6, :cond_6

    .line 1319
    goto :goto_3

    .line 1325
    :cond_6
    if-eqz p2, :cond_7

    .line 1326
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    .line 1327
    .local v6, "oldActivity":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1328
    const/4 v8, -0x1

    invoke-direct {p0, v1, v6, v8}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1331
    .end local v6    # "oldActivity":Landroid/content/ComponentName;
    :cond_7
    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1296
    .end local v4    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "newActivity":Landroid/content/ComponentName;
    .end local v7    # "original":Landroid/content/pm/ShortcutInfo;
    :cond_8
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1335
    .end local v2    # "i":I
    :cond_9
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_4
    if-ltz v2, :cond_a

    .line 1336
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->enforceMaxActivityShortcuts(I)V

    .line 1335
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1338
    .end local v2    # "i":I
    :cond_a
    return-void
.end method

.method public ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V
    .locals 2
    .param p2, "ignoreInvisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 255
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 256
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;Z)V

    .line 255
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 258
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V
    .locals 2
    .param p2, "ignoreInvisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 248
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 249
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;Z)V

    .line 248
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 251
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public ensureNoBitmapIconIfShortcutIsLongLived(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 261
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 262
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 263
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    goto :goto_1

    .line 266
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 267
    .local v3, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    if-eq v4, v1, :cond_1

    .line 268
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 269
    goto :goto_1

    .line 271
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v4

    if-nez v4, :cond_2

    .line 272
    nop

    .line 261
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v3    # "icon":Landroid/graphics/drawable/Icon;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 276
    .restart local v2    # "si":Landroid/content/pm/ShortcutInfo;
    .restart local v3    # "icon":Landroid/graphics/drawable/Icon;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid icon type in shortcut "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Bitmaps are not allowed in long-lived shortcuts. Use Resource icons, or Uri-based icons instead."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ShortcutService"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 280
    .end local v0    # "i":I
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v3    # "icon":Landroid/graphics/drawable/Icon;
    :cond_3
    return-void
.end method

.method public ensureNotImmutable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "ignoreInvisible"    # Z

    .line 243
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    .line 244
    return-void
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V
    .locals 7
    .param p3, "cloneFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .line 706
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p2, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 707
    return-void
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V
    .locals 8
    .param p3, "cloneFlag"    # I
    .param p4, "callingLauncher"    # Ljava/lang/String;
    .param p5, "launcherUserId"    # I
    .param p6, "getPinnedByAnyLauncher"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 719
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p2, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 727
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    if-nez p4, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 729
    :cond_1
    nop

    .line 728
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v1

    invoke-virtual {v0, p4, v1, p5}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 729
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v1

    :goto_0
    nop

    .line 731
    .local v1, "pinnedByCallerSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 732
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 737
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz p4, :cond_3

    if-eqz v1, :cond_2

    .line 738
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    .line 740
    .local v4, "isPinnedByCaller":Z
    :goto_3
    if-nez p6, :cond_4

    .line 741
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 742
    if-nez v4, :cond_4

    .line 743
    goto :goto_4

    .line 747
    :cond_4
    invoke-virtual {v3, p3}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    .line 752
    .local v5, "clone":Landroid/content/pm/ShortcutInfo;
    const/4 v6, 0x2

    if-nez p6, :cond_5

    .line 753
    if-nez v4, :cond_5

    .line 754
    invoke-virtual {v5, v6}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 757
    :cond_5
    if-eqz p2, :cond_6

    invoke-interface {p2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 758
    :cond_6
    if-nez v4, :cond_7

    .line 759
    invoke-virtual {v5, v6}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 761
    :cond_7
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    .end local v3    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v4    # "isPinnedByCaller":Z
    .end local v5    # "clone":Landroid/content/pm/ShortcutInfo;
    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 764
    .end local v2    # "i":I
    :cond_9
    return-void
.end method

.method public findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method getAllShareTargetsForTest()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ShareTargetInfo;",
            ">;"
        }
    .end annotation

    .line 2002
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getAllShortcutsForTest()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1997
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getApiCallCount(Z)I
    .locals 9
    .param p1, "unlimited"    # Z

    .line 627
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 633
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    iget v1, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    .line 635
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->getUidLastForegroundElapsedTimeLocked(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    if-eqz p1, :cond_1

    .line 637
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    .line 638
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting()V

    .line 645
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    move-result-wide v1

    .line 647
    .local v1, "last":J
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v3

    .line 648
    .local v3, "now":J
    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-wide v7, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long v5, v7, v3

    if-lez v5, :cond_2

    .line 649
    const-string v5, "ShortcutService"

    const-string v7, "Clock rewound"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iput-wide v3, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 652
    iput v6, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 653
    return v6

    .line 657
    :cond_2
    iget-wide v7, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long v5, v7, v1

    if-gez v5, :cond_3

    .line 662
    iput v6, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 663
    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 665
    :cond_3
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return v5
.end method

.method public getMatchingShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;
    .locals 13
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 777
    .local v0, "matchedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 778
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShareTargetInfo;

    .line 779
    .local v2, "target":Lcom/android/server/pm/ShareTargetInfo;
    iget-object v3, v2, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 780
    .local v6, "data":Lcom/android/server/pm/ShareTargetInfo$TargetData;
    iget-object v7, v6, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/content/IntentFilter;->hasDataType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 782
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    goto :goto_2

    .line 779
    .end local v6    # "data":Lcom/android/server/pm/ShareTargetInfo$TargetData;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 777
    .end local v2    # "target":Lcom/android/server/pm/ShareTargetInfo;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 788
    .end local v1    # "i":I
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 789
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 793
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v1, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    sget-object v2, Lcom/android/server/pm/-$$Lambda$2VdstM0DO8CNjons0WtDfT1btWE;->INSTANCE:Lcom/android/server/pm/-$$Lambda$2VdstM0DO8CNjons0WtDfT1btWE;

    const/16 v3, 0x9

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    .line 797
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 799
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v4

    .line 800
    .local v4, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 801
    goto :goto_7

    .line 803
    :cond_4
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 805
    const/4 v6, 0x1

    .line 806
    .local v6, "hasAllCategories":Z
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/ShareTargetInfo;

    .line 807
    .local v7, "target":Lcom/android/server/pm/ShareTargetInfo;
    const/4 v8, 0x0

    .local v8, "q":I
    :goto_5
    iget-object v9, v7, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_6

    .line 808
    iget-object v9, v7, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 809
    const/4 v6, 0x0

    .line 810
    goto :goto_6

    .line 807
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 813
    .end local v8    # "q":I
    :cond_6
    :goto_6
    if-eqz v6, :cond_7

    .line 814
    new-instance v8, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    new-instance v10, Landroid/content/ComponentName;

    .line 815
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v7, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v9, v10}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/ComponentName;)V

    .line 814
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    goto :goto_7

    .line 803
    .end local v6    # "hasAllCategories":Z
    .end local v7    # "target":Lcom/android/server/pm/ShareTargetInfo;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 798
    .end local v4    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "j":I
    :cond_8
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 820
    .end local v3    # "i":I
    :cond_9
    return-object v2
.end method

.method public getOwnerUserId()I
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v0

    return v0
.end method

.method public getPackageResources()Landroid/content/res/Resources;
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 183
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v2

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUid()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    return v0
.end method

.method getSharingShortcutCount()I
    .locals 9

    .line 833
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_5

    .line 838
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 839
    .local v0, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    sget-object v1, Lcom/android/server/pm/-$$Lambda$2VdstM0DO8CNjons0WtDfT1btWE;->INSTANCE:Lcom/android/server/pm/-$$Lambda$2VdstM0DO8CNjons0WtDfT1btWE;

    const/16 v2, 0x1b

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    .line 842
    const/4 v1, 0x0

    .line 843
    .local v1, "sharingShortcutCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 844
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v3

    .line 845
    .local v3, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 846
    goto :goto_4

    .line 848
    :cond_1
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 850
    const/4 v5, 0x1

    .line 851
    .local v5, "hasAllCategories":Z
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/ShareTargetInfo;

    .line 852
    .local v6, "target":Lcom/android/server/pm/ShareTargetInfo;
    const/4 v7, 0x0

    .local v7, "q":I
    :goto_2
    iget-object v8, v6, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 853
    iget-object v8, v6, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 854
    const/4 v5, 0x0

    .line 855
    goto :goto_3

    .line 852
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 858
    .end local v7    # "q":I
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 859
    add-int/lit8 v1, v1, 0x1

    .line 860
    goto :goto_4

    .line 848
    .end local v5    # "hasAllCategories":Z
    .end local v6    # "target":Lcom/android/server/pm/ShareTargetInfo;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 843
    .end local v3    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "j":I
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 864
    .end local v2    # "i":I
    :cond_6
    return v1

    .line 834
    .end local v0    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v1    # "sharingShortcutCount":I
    :cond_7
    :goto_5
    const/4 v0, 0x0

    return v0
.end method

.method public getShortcutCount()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public getUsedBitmapFiles()Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 871
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 873
    .local v0, "usedFiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 874
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 875
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 876
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/ShortcutPackage;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 873
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 879
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public hasNonManifestShortcuts()Z
    .locals 4

    .line 1466
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1467
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 1468
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1469
    return v1

    .line 1466
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1472
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasShareTargets()Z
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isShortcutExistsAndInvisibleToPublisher(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 225
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 230
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$refreshPinnedFlags$0$ShortcutPackage(Lcom/android/server/pm/ShortcutLauncher;)V
    .locals 5
    .param p1, "launcherShortcuts"    # Lcom/android/server/pm/ShortcutLauncher;

    .line 596
    nop

    .line 597
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v1

    .line 596
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    .line 599
    .local v0, "pinned":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 602
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 603
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 604
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 605
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    if-nez v3, :cond_1

    .line 610
    goto :goto_1

    .line 612
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 602
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "si":Landroid/content/pm/ShortcutInfo;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 614
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 600
    :cond_3
    :goto_2
    return-void
.end method

.method protected onRestored(I)V
    .locals 3
    .param p1, "restoreBlockReason"    # I

    .line 201
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 202
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 203
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 205
    invoke-virtual {v1, p1}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 206
    if-eqz p1, :cond_0

    .line 207
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 201
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 212
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    .line 213
    return-void
.end method

.method public pushDynamicShortcut(Landroid/content/pm/ShortcutInfo;Ljava/util/List;)Z
    .locals 10
    .param p1, "newShortcut"    # Landroid/content/pm/ShortcutInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ShortcutInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 351
    .local p2, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string/jumbo v1, "pushDynamicShortcuts() cannot publish disabled shortcuts"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 354
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 356
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 357
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 358
    .local v1, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v2, 0x0

    .line 360
    .local v2, "deleted":Z
    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 361
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v4, v4, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 362
    .local v4, "service":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v5

    .line 364
    .local v5, "maxShortcuts":I
    nop

    .line 365
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v6

    .line 366
    .local v6, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 368
    .local v7, "activityShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v5, :cond_2

    .line 372
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 374
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    .line 375
    .local v8, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to remove manifest shortcut while pushing dynamic shortcut "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 377
    const-string v9, "ShortcutService"

    invoke-static {v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return v0

    .line 382
    :cond_0
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v0}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;Z)Landroid/content/pm/ShortcutInfo;

    move-result-object v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    move v2, v0

    .line 385
    .end local v4    # "service":Lcom/android/server/pm/ShortcutService;
    .end local v5    # "maxShortcuts":I
    .end local v6    # "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    .end local v7    # "activityShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v8    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :cond_2
    goto :goto_1

    .line 388
    :cond_3
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V

    .line 391
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v0

    const v3, 0x40004002

    and-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 395
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 396
    return v2
.end method

.method public refreshPinnedFlags()V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 591
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 590
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 595
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$ibOAVgfKWMZFYSeVV_hLNx6jogk;

    invoke-direct {v1, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$ibOAVgfKWMZFYSeVV_hLNx6jogk;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 617
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()Ljava/util/List;

    .line 618
    return-void
.end method

.method public rescanPackageIfNeeded(ZZ)Z
    .locals 18
    .param p1, "isNewApp"    # Z
    .param p2, "forceRescan"    # Z

    .line 936
    move-object/from16 v1, p0

    const-string v2, "ShortcutService"

    iget-object v0, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v3, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 937
    .local v3, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v4

    .line 941
    .local v4, "start":J
    const/16 v6, 0xe

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 942
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v8

    .line 941
    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    .line 943
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 944
    nop

    .line 965
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 944
    return v8

    .line 947
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 958
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v9

    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v11

    cmp-long v0, v9, v11

    if-nez v0, :cond_1

    .line 959
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->getLastUpdateTime()J

    move-result-wide v9

    iget-wide v11, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v9, v11

    if-nez v0, :cond_1

    .line 960
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->areAllActivitiesStillEnabled()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 961
    nop

    .line 965
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 961
    return v8

    .line 965
    :cond_1
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 966
    nop

    .line 969
    const/4 v6, 0x0

    .line 971
    .local v6, "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_2
    iget-object v0, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 972
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v10

    iget-object v11, v1, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 971
    invoke-static {v0, v9, v10, v11}, Lcom/android/server/pm/ShortcutParser;->parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v0

    .line 975
    goto :goto_0

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "Failed to load shortcuts from AndroidManifest.xml."

    invoke-static {v2, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 976
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v6, :cond_2

    move v0, v8

    goto :goto_1

    .line 977
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    nop

    .line 983
    .local v0, "manifestShortcutSize":I
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    .line 988
    return v8

    .line 996
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/server/pm/ShortcutPackageInfo;->updateFromPackageInfo(Landroid/content/pm/PackageInfo;)V

    .line 997
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v9

    .line 1001
    .local v9, "newVersionCode":J
    iget-object v11, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    .local v11, "i":I
    :goto_2
    if-ltz v11, :cond_6

    .line 1002
    iget-object v13, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ShortcutInfo;

    .line 1003
    .local v13, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v13}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v14

    const/16 v15, 0x64

    if-eq v14, v15, :cond_4

    .line 1004
    goto :goto_3

    .line 1006
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/ShortcutPackageInfo;->getBackupSourceVersionCode()J

    move-result-wide v14

    cmp-long v14, v14, v9

    if-lez v14, :cond_5

    .line 1011
    goto :goto_3

    .line 1013
    :cond_5
    new-array v14, v12, [Ljava/lang/Object;

    invoke-virtual {v13}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v8

    const-string v15, "Restoring shortcut: %s"

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/16 v14, 0x40

    invoke-virtual {v13, v14}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 1015
    invoke-virtual {v13, v8}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 1001
    .end local v13    # "si":Landroid/content/pm/ShortcutInfo;
    :goto_3
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 1020
    .end local v11    # "i":I
    :cond_6
    if-nez p1, :cond_10

    .line 1021
    const/4 v11, 0x0

    .line 1023
    .local v11, "publisherRes":Landroid/content/res/Resources;
    iget-object v13, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    sub-int/2addr v13, v12

    .local v13, "i":I
    :goto_4
    if-ltz v13, :cond_f

    .line 1024
    iget-object v14, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ShortcutInfo;

    .line 1027
    .local v14, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1028
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v15

    if-nez v15, :cond_7

    .line 1030
    const-string/jumbo v15, "null activity detected."

    invoke-virtual {v3, v15}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    move v15, v8

    goto :goto_5

    .line 1032
    :cond_7
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v12

    invoke-virtual {v3, v15, v12}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    move-result v12

    if-nez v12, :cond_8

    .line 1033
    const/4 v12, 0x2

    new-array v15, v12, [Ljava/lang/Object;

    .line 1035
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v8

    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v17

    const/16 v16, 0x1

    aput-object v17, v15, v16

    .line 1033
    const-string v8, "%s is no longer main activity. Disabling shorcut %s."

    invoke-static {v8, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x0

    invoke-direct {v1, v8, v15, v12}, Lcom/android/server/pm/ShortcutPackage;->disableDynamicWithId(Ljava/lang/String;ZI)Landroid/content/pm/ShortcutInfo;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 1038
    move-object v12, v7

    goto :goto_6

    .line 1032
    :cond_8
    move v15, v8

    goto :goto_5

    .line 1027
    :cond_9
    move v15, v8

    .line 1044
    :cond_a
    :goto_5
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->hasAnyResources()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1045
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v8

    if-nez v8, :cond_d

    .line 1046
    if-nez v11, :cond_c

    .line 1047
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1048
    .end local v11    # "publisherRes":Landroid/content/res/Resources;
    .local v8, "publisherRes":Landroid/content/res/Resources;
    if-nez v8, :cond_b

    .line 1049
    move-object v12, v7

    goto :goto_7

    .line 1048
    :cond_b
    move-object v11, v8

    .line 1056
    .end local v8    # "publisherRes":Landroid/content/res/Resources;
    .restart local v11    # "publisherRes":Landroid/content/res/Resources;
    :cond_c
    invoke-virtual {v14, v11}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceIds(Landroid/content/res/Resources;)V

    .line 1058
    :cond_d
    move-object v12, v7

    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    .local v12, "pi":Landroid/content/pm/PackageInfo;
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    goto :goto_6

    .line 1044
    .end local v12    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v7    # "pi":Landroid/content/pm/PackageInfo;
    :cond_e
    move-object v12, v7

    .line 1023
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    .end local v14    # "si":Landroid/content/pm/ShortcutInfo;
    .restart local v12    # "pi":Landroid/content/pm/PackageInfo;
    :goto_6
    add-int/lit8 v13, v13, -0x1

    move-object v7, v12

    move v8, v15

    const/4 v12, 0x1

    goto :goto_4

    .end local v12    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v7    # "pi":Landroid/content/pm/PackageInfo;
    :cond_f
    move-object v12, v7

    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v12    # "pi":Landroid/content/pm/PackageInfo;
    goto :goto_7

    .line 1020
    .end local v11    # "publisherRes":Landroid/content/res/Resources;
    .end local v12    # "pi":Landroid/content/pm/PackageInfo;
    .end local v13    # "i":I
    .restart local v7    # "pi":Landroid/content/pm/PackageInfo;
    :cond_10
    move-object v12, v7

    .line 1064
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v12    # "pi":Landroid/content/pm/PackageInfo;
    :goto_7
    invoke-direct {v1, v6}, Lcom/android/server/pm/ShortcutPackage;->publishManifestShortcuts(Ljava/util/List;)Z

    .line 1066
    if-eqz v6, :cond_11

    .line 1067
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->pushOutExcessShortcuts()Z

    .line 1070
    :cond_11
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 1074
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v3, v2, v7, v8, v8}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 1075
    const/4 v2, 0x1

    return v2

    .line 965
    .end local v0    # "manifestShortcutSize":I
    .end local v6    # "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v9    # "newVersionCode":J
    .end local v12    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v0

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 966
    throw v0
.end method

.method public resetRateLimiting()V
    .locals 2

    .line 690
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-lez v0, :cond_0

    .line 691
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 692
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 694
    :cond_0
    return-void
.end method

.method public resetRateLimitingForCommandLineNoSaving()V
    .locals 2

    .line 697
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 698
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 699
    return-void
.end method

.method public resetThrottling()V
    .locals 1

    .line 767
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 768
    return-void
.end method

.method public resolveResourceStrings()V
    .locals 8

    .line 1344
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1346
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    const/4 v1, 0x0

    .line 1348
    .local v1, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v2, 0x0

    .line 1349
    .local v2, "publisherRes":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 1350
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 1352
    .local v5, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1353
    if-nez v2, :cond_0

    .line 1354
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1355
    if-nez v2, :cond_0

    .line 1356
    goto :goto_1

    .line 1360
    :cond_0
    invoke-virtual {v5, v2}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    .line 1361
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1363
    if-nez v1, :cond_1

    .line 1364
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v6

    .line 1366
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1349
    .end local v5    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1369
    .end local v3    # "i":I
    :cond_3
    :goto_1
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1370
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v1, v5}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 1372
    :cond_4
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1576
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1577
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1579
    .local v1, "shareTargetSize":I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    iget v2, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-nez v2, :cond_0

    .line 1580
    return-void

    .line 1583
    :cond_0
    const/4 v2, 0x0

    const-string/jumbo v3, "package"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1585
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1586
    iget v4, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    int-to-long v4, v4

    const-string v6, "call-count"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1587
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    const-string/jumbo v6, "last-reset"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1588
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1590
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 1591
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 1592
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutPackageInfo;->isBackupAllowed()Z

    move-result v6

    .line 1591
    invoke-direct {p0, p1, v5, p2, v6}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 1590
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1595
    .end local v4    # "j":I
    :cond_1
    if-nez p2, :cond_2

    .line 1596
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 1597
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/ShareTargetInfo;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/ShareTargetInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1596
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1601
    .end local v4    # "j":I
    :cond_2
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1602
    return-void
.end method

.method public tryApiCall(Z)Z
    .locals 3
    .param p1, "unlimited"    # Z

    .line 676
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 678
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result v1

    iget v2, v0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    if-lt v1, v2, :cond_0

    .line 679
    const/4 v1, 0x0

    return v1

    .line 681
    :cond_0
    iget v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 682
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 683
    return v2
.end method

.method public updateInvisibleShortcutForPinRequestWith(Landroid/content/pm/ShortcutInfo;)V
    .locals 2
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 570
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 571
    .local v0, "source":Landroid/content/pm/ShortcutInfo;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V

    .line 575
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 577
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 579
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 580
    return-void
.end method

.method public verifyStates()V
    .locals 14

    .line 2007
    invoke-super {p0}, Lcom/android/server/pm/ShortcutPackageItem;->verifyStates()V

    .line 2009
    const/4 v0, 0x0

    .line 2011
    .local v0, "failed":Z
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 2013
    .local v1, "s":Lcom/android/server/pm/ShortcutService;
    nop

    .line 2014
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v2

    .line 2017
    .local v2, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "outer":I
    :goto_0
    const-string v5, "Package "

    const-string v6, "ShortcutService.verify"

    if-ltz v3, :cond_1

    .line 2018
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 2019
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v9, v9, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v9

    if-le v8, v9, :cond_0

    .line 2020
    const/4 v0, 0x1

    .line 2021
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": activity "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " shortcuts."

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2021
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    :cond_0
    sget-object v5, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$DImOsVxMicPEAJPTxf_RRXuc70I;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$DImOsVxMicPEAJPTxf_RRXuc70I;

    invoke-static {v7, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2029
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2030
    .local v5, "dynamicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    sget-object v6, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$Uf55CaKs9xv-osb2umPmXq3W2lM;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$Uf55CaKs9xv-osb2umPmXq3W2lM;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2032
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2033
    .local v6, "manifestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    sget-object v8, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$9YSAfuJJkDxYR6ZL5AWyxpKsC_Y;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$9YSAfuJJkDxYR6ZL5AWyxpKsC_Y;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2035
    invoke-direct {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    .line 2036
    invoke-direct {p0, v6}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    .line 2017
    .end local v5    # "dynamicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v6    # "manifestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2040
    .end local v3    # "outer":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_11

    .line 2041
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 2042
    .local v7, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v8

    const-string v9, ": shortcut "

    if-nez v8, :cond_2

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2043
    const/4 v0, 0x1

    .line 2044
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not manifest, dynamic or pinned."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_2
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2048
    const/4 v0, 0x1

    .line 2049
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is both dynamic and manifest at the same time."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :cond_3
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-nez v8, :cond_4

    .line 2053
    const/4 v0, 0x1

    .line 2054
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " has null activity, but not floating."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    :cond_4
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_6

    .line 2058
    const/4 v0, 0x1

    .line 2059
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not floating, but is disabled."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :cond_6
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v8

    if-eqz v8, :cond_7

    .line 2063
    const/4 v0, 0x1

    .line 2064
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is floating, but has rank="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2065
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2064
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    :cond_7
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 2068
    const/4 v0, 0x1

    .line 2069
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " still has an icon"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    :cond_8
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v8

    if-nez v8, :cond_9

    .line 2073
    const/4 v0, 0x1

    .line 2074
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " has adaptive bitmap but was not saved to a file nor has icon uri."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    :cond_9
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2078
    const/4 v0, 0x1

    .line 2079
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " has both resource and bitmap icons"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    :cond_a
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2083
    const/4 v0, 0x1

    .line 2084
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " has both url and bitmap icons"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    :cond_b
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2088
    const/4 v0, 0x1

    .line 2089
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " has both url and resource icons"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_c
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v8

    .line 2093
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v10

    if-nez v10, :cond_d

    move v10, v4

    goto :goto_2

    :cond_d
    const/4 v10, 0x0

    :goto_2
    if-eq v8, v10, :cond_e

    .line 2094
    const/4 v0, 0x1

    .line 2095
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " isEnabled() and getDisabledReason() disagree: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2097
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " vs "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2095
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    :cond_e
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v8

    const/16 v10, 0x64

    if-ne v8, v10, :cond_f

    .line 2100
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/ShortcutPackageInfo;->getBackupSourceVersionCode()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-nez v8, :cond_f

    .line 2102
    const/4 v0, 0x1

    .line 2103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " RESTORED_VERSION_LOWER with no backup source version code."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :cond_f
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/server/pm/ShortcutService;->isDummyMainActivity(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2107
    const/4 v0, 0x1

    .line 2108
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " has a dummy target activity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    .end local v7    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_10
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 2113
    .end local v3    # "i":I
    :cond_11
    if-nez v0, :cond_12

    .line 2116
    return-void

    .line 2114
    :cond_12
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "See logcat for errors"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
