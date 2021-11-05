.class public final Lcom/android/server/pm/UserTypeDetails$Builder;
.super Ljava/lang/Object;
.source "UserTypeDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserTypeDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBadgeColors:[I

.field private mBadgeLabels:[I

.field private mBadgeNoBackground:I

.field private mBadgePlain:I

.field private mBaseType:I

.field private mDarkThemeBadgeColors:[I

.field private mDefaultRestrictions:Landroid/os/Bundle;

.field private mDefaultUserInfoPropertyFlags:I

.field private mEnabled:Z

.field private mIconBadge:I

.field private mLabel:I

.field private mMaxAllowed:I

.field private mMaxAllowedPerParent:I

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    .line 322
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    .line 324
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 325
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:Z

    .line 326
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabel:I

    .line 327
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    .line 328
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    .line 329
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    .line 330
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    .line 331
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    .line 332
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    return-void
.end method

.method private hasBadge()Z
    .locals 1

    .line 433
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasValidBaseType()Z
    .locals 2

    .line 438
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    const/16 v1, 0x400

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_1

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc00

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasValidPropertyFlags()Z
    .locals 2

    .line 446
    const/16 v0, 0x1c93

    .line 454
    .local v0, "forbiddenMask":I
    iget v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    and-int/lit16 v1, v1, 0x1c93

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public createUserTypeDetails()Lcom/android/server/pm/UserTypeDetails;
    .locals 19

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "Cannot create a UserTypeDetails with no name."

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserTypeDetails$Builder;->hasValidBaseType()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserTypeDetails "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has invalid baseType: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserTypeDetails$Builder;->hasValidPropertyFlags()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has invalid flags: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    .line 418
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 416
    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 419
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserTypeDetails$Builder;->hasBadge()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 420
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    if-eqz v1, :cond_1

    array-length v1, v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has badge but no badgeLabels."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 422
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has badge but no badgeColors."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 425
    :cond_3
    new-instance v1, Lcom/android/server/pm/UserTypeDetails;

    iget-object v4, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:Z

    iget v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    iget v7, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    iget v8, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    iget v9, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabel:I

    iget v10, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    iget v11, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    iget v12, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    iget v13, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    iget-object v14, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    iget-object v15, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    .line 428
    iget-object v2, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    if-nez v2, :cond_4

    move-object/from16 v16, v15

    goto :goto_3

    :cond_4
    move-object/from16 v16, v2

    :goto_3
    iget-object v2, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    const/16 v18, 0x0

    move-object v3, v1

    move-object/from16 v17, v2

    invoke-direct/range {v3 .. v18}, Lcom/android/server/pm/UserTypeDetails;-><init>(Ljava/lang/String;ZIIIIIIII[I[I[ILandroid/os/Bundle;Lcom/android/server/pm/UserTypeDetails$1;)V

    .line 425
    return-object v1
.end method

.method getBaseType()I
    .locals 1

    .line 408
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    return v0
.end method

.method public varargs setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0
    .param p1, "badgeColors"    # [I

    .line 370
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    .line 371
    return-object p0
.end method

.method public varargs setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0
    .param p1, "badgeLabels"    # [I

    .line 365
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    .line 366
    return-object p0
.end method

.method public setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0
    .param p1, "badgeNoBackground"    # I

    .line 393
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    .line 394
    return-object p0
.end method

.method public setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0
    .param p1, "badgePlain"    # I

    .line 388
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    .line 389
    return-object p0
.end method

.method public setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0
    .param p1, "baseType"    # I

    .line 355
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 356
    return-object p0
.end method

.method public varargs setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0
    .param p1, "darkThemeBadgeColors"    # [I

    .line 378
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    .line 379
    return-object p0
.end method

.method public setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .line 403
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 404
    return-object p0
.end method

.method public setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0
    .param p1, "flags"    # I

    .line 360
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    .line 361
    return-object p0
.end method

.method public setEnabled(Z)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 340
    iput-boolean p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:Z

    .line 341
    return-object p0
.end method

.method public setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0
    .param p1, "badgeIcon"    # I

    .line 383
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    .line 384
    return-object p0
.end method

.method public setLabel(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0
    .param p1, "label"    # I

    .line 398
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabel:I

    .line 399
    return-object p0
.end method

.method public setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0
    .param p1, "maxAllowed"    # I

    .line 345
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    .line 346
    return-object p0
.end method

.method public setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0
    .param p1, "maxAllowedPerParent"    # I

    .line 350
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    .line 351
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 335
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    .line 336
    return-object p0
.end method
