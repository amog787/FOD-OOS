.class public final Lcom/android/server/pm/UserTypeDetails;
.super Ljava/lang/Object;
.source "UserTypeDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserTypeDetails$Builder;
    }
.end annotation


# static fields
.field public static final UNLIMITED_NUMBER_OF_USERS:I = -0x1


# instance fields
.field private final mBadgeColors:[I

.field private final mBadgeLabels:[I

.field private final mBadgeNoBackground:I

.field private final mBadgePlain:I

.field private final mBaseType:I

.field private final mDarkThemeBadgeColors:[I

.field private final mDefaultRestrictions:Landroid/os/Bundle;

.field private final mDefaultUserInfoPropertyFlags:I

.field private final mEnabled:Z

.field private final mIconBadge:I

.field private final mLabel:I

.field private final mMaxAllowed:I

.field private final mMaxAllowedPerParent:I

.field private final mName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZIIIIIIII[I[I[ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "maxAllowed"    # I
    .param p4, "baseType"    # I
    .param p5, "defaultUserInfoPropertyFlags"    # I
    .param p6, "label"    # I
    .param p7, "maxAllowedPerParent"    # I
    .param p8, "iconBadge"    # I
    .param p9, "badgePlain"    # I
    .param p10, "badgeNoBackground"    # I
    .param p11, "badgeLabels"    # [I
    .param p12, "badgeColors"    # [I
    .param p13, "darkThemeBadgeColors"    # [I
    .param p14, "defaultRestrictions"    # Landroid/os/Bundle;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    .line 138
    iput-boolean p2, p0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    .line 139
    iput p3, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    .line 140
    iput p7, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    .line 141
    iput p4, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    .line 142
    iput p5, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    .line 143
    iput-object p14, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 145
    iput p8, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    .line 146
    iput p9, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    .line 147
    iput p10, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    .line 148
    iput p6, p0, Lcom/android/server/pm/UserTypeDetails;->mLabel:I

    .line 149
    iput-object p11, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    .line 150
    iput-object p12, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    .line 151
    iput-object p13, p0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZIIIIIIII[I[I[ILandroid/os/Bundle;Lcom/android/server/pm/UserTypeDetails$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # I
    .param p9, "x8"    # I
    .param p10, "x9"    # I
    .param p11, "x10"    # [I
    .param p12, "x11"    # [I
    .param p13, "x12"    # [I
    .param p14, "x13"    # Landroid/os/Bundle;
    .param p15, "x14"    # Lcom/android/server/pm/UserTypeDetails$1;

    .line 41
    invoke-direct/range {p0 .. p14}, Lcom/android/server/pm/UserTypeDetails;-><init>(Ljava/lang/String;ZIIIIIIII[I[I[ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public addDefaultRestrictionsTo(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "currentRestrictions"    # Landroid/os/Bundle;

    .line 270
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 271
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 275
    const-string v0, "        "

    .line 276
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "        "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mName: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mBaseType: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    invoke-static {v2}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mEnabled: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 279
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mMaxAllowed: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 280
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mMaxAllowedPerParent: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 281
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDefaultUserInfoFlags: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    iget v2, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    invoke-static {v2}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mLabel: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/pm/UserTypeDetails;->mLabel:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 285
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isSystem()Z

    move-result v2

    const-string v3, "            "

    if-eqz v2, :cond_2

    .line 286
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "config_defaultFirstUserRestrictions: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v2, "restrictions":Landroid/os/Bundle;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "defaultFirstUserRestrictions":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 292
    .local v7, "userRestriction":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 293
    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 291
    .end local v7    # "userRestriction":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 296
    :cond_1
    invoke-static {p1, v3, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "restrictions":Landroid/os/Bundle;
    .end local v4    # "defaultFirstUserRestrictions":[Ljava/lang/String;
    goto :goto_1

    .line 297
    :catch_0
    move-exception v2

    .line 298
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    none - resource not found"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_1
    goto :goto_2

    .line 301
    :cond_2
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDefaultRestrictions: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {p1, v3, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 305
    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mIconBadge: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 306
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mBadgePlain: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 307
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mBadgeNoBackground: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 308
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mBadgeLabels.length: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    const-string v3, "0(null)"

    if-eqz v2, :cond_3

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v3

    :goto_3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 310
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mBadgeColors.length: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    if-eqz v2, :cond_4

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v3

    :goto_4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 312
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mDarkThemeBadgeColors.length: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    if-eqz v1, :cond_5

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_5
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method public getBadgeColor(I)I
    .locals 2
    .param p1, "badgeIndex"    # I

    .line 232
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-eqz v1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    return v0

    .line 233
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBadgeLabel(I)I
    .locals 2
    .param p1, "badgeIndex"    # I

    .line 220
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-eqz v1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    return v0

    .line 221
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBadgeNoBackground()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    return v0
.end method

.method public getBadgePlain()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    return v0
.end method

.method public getDarkThemeBadgeColor(I)I
    .locals 2
    .param p1, "badgeIndex"    # I

    .line 245
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-eqz v1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    return v0

    .line 246
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserTypeDetails;->getBadgeColor(I)I

    move-result v0

    return v0
.end method

.method getDefaultRestrictions()Landroid/os/Bundle;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUserInfoFlags()I
    .locals 2

    .line 186
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    iget v1, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getIconBadge()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    return v0
.end method

.method public getLabel()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mLabel:I

    return v0
.end method

.method public getMaxAllowed()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    return v0
.end method

.method public getMaxAllowedPerParent()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hasBadge()Z
    .locals 1

    .line 196
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    return v0
.end method

.method public isFull()Z
    .locals 1

    .line 256
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isManagedProfile()Z
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isProfile()Z
    .locals 1

    .line 252
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSystem()Z
    .locals 1

    .line 260
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
