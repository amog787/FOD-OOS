.class public final Lcom/android/server/pm/DumpState;
.super Ljava/lang/Object;
.source "DumpState.java"


# static fields
.field public static final DUMP_ACTIVITY_RESOLVERS:I = 0x4

.field public static final DUMP_APEX:I = 0x2000000

.field public static final DUMP_CHANGES:I = 0x400000

.field public static final DUMP_COMPILER_STATS:I = 0x200000

.field public static final DUMP_CONTENT_RESOLVERS:I = 0x20

.field public static final DUMP_DEXOPT:I = 0x100000

.field public static final DUMP_DOMAIN_PREFERRED:I = 0x40000

.field public static final DUMP_FEATURES:I = 0x2

.field public static final DUMP_FROZEN:I = 0x80000

.field public static final DUMP_INSTALLS:I = 0x10000

.field public static final DUMP_INTENT_FILTER_VERIFIERS:I = 0x20000

.field public static final DUMP_KEYSETS:I = 0x4000

.field public static final DUMP_LIBS:I = 0x1

.field public static final DUMP_MESSAGES:I = 0x200

.field public static final DUMP_PACKAGES:I = 0x80

.field public static final DUMP_PERMISSIONS:I = 0x40

.field public static final DUMP_PREFERRED:I = 0x1000

.field public static final DUMP_PREFERRED_XML:I = 0x2000

.field public static final DUMP_PROVIDERS:I = 0x400

.field public static final DUMP_RECEIVER_RESOLVERS:I = 0x10

.field public static final DUMP_SERVICE_PERMISSIONS:I = 0x1000000

.field public static final DUMP_SERVICE_RESOLVERS:I = 0x8

.field public static final DUMP_SHARED_USERS:I = 0x100

.field public static final DUMP_VERIFIERS:I = 0x800

.field public static final DUMP_VERSION:I = 0x8000

.field public static final DUMP_VOLUMES:I = 0x800000

.field public static final OPTION_DUMP_ALL_COMPONENTS:I = 0x2

.field public static final OPTION_SHOW_FILTERS:I = 0x1

.field public static final OPTION_SKIP_PERMISSIONS:I = 0x4


# instance fields
.field private mOptions:I

.field private mSharedUser:Lcom/android/server/pm/SharedUserSetting;

.field private mTitlePrinted:Z

.field private mTypes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSharedUser()Lcom/android/server/pm/SharedUserSetting;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/server/pm/DumpState;->mSharedUser:Lcom/android/server/pm/SharedUserSetting;

    return-object v0
.end method

.method public getTitlePrinted()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    return v0
.end method

.method public isDumping(I)Z
    .locals 2
    .param p1, "type"    # I

    .line 59
    iget v0, p0, Lcom/android/server/pm/DumpState;->mTypes:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_0

    .line 60
    return v1

    .line 63
    :cond_0
    iget v0, p0, Lcom/android/server/pm/DumpState;->mTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOptionEnabled(I)Z
    .locals 1
    .param p1, "option"    # I

    .line 71
    iget v0, p0, Lcom/android/server/pm/DumpState;->mOptions:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTitlePrinted()Z
    .locals 2

    .line 79
    iget-boolean v0, p0, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 80
    .local v0, "printed":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 81
    return v0
.end method

.method public setDump(I)V
    .locals 1
    .param p1, "type"    # I

    .line 67
    iget v0, p0, Lcom/android/server/pm/DumpState;->mTypes:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/DumpState;->mTypes:I

    .line 68
    return-void
.end method

.method public setOptionEnabled(I)V
    .locals 1
    .param p1, "option"    # I

    .line 75
    iget v0, p0, Lcom/android/server/pm/DumpState;->mOptions:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/DumpState;->mOptions:I

    .line 76
    return-void
.end method

.method public setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V
    .locals 0
    .param p1, "user"    # Lcom/android/server/pm/SharedUserSetting;

    .line 97
    iput-object p1, p0, Lcom/android/server/pm/DumpState;->mSharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 98
    return-void
.end method

.method public setTitlePrinted(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 89
    iput-boolean p1, p0, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 90
    return-void
.end method
