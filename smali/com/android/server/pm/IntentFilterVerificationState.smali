.class public Lcom/android/server/pm/IntentFilterVerificationState;
.super Ljava/lang/Object;
.source "IntentFilterVerificationState.java"


# static fields
.field public static final STATE_UNDEFINED:I = 0x0

.field public static final STATE_VERIFICATION_FAILURE:I = 0x3

.field public static final STATE_VERIFICATION_PENDING:I = 0x1

.field public static final STATE_VERIFICATION_SUCCESS:I = 0x2

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHosts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mRequiredVerifierUid:I

.field private mState:I

.field private mUserId:I

.field private mVerificationComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/android/server/pm/IntentFilterVerificationState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/IntentFilterVerificationState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 2
    .param p1, "verifierUid"    # I
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mRequiredVerifierUid:I

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mFilters:Ljava/util/ArrayList;

    .line 39
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mHosts:Landroid/util/ArraySet;

    .line 46
    iput p1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mRequiredVerifierUid:I

    .line 47
    iput p2, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mUserId:I

    .line 48
    iput-object p3, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mPackageName:Ljava/lang/String;

    .line 49
    iput v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mState:I

    .line 50
    iput-boolean v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mVerificationComplete:Z

    .line 51
    return-void
.end method


# virtual methods
.method public addFilter(Landroid/content/pm/parsing/component/ParsedIntentInfo;)V
    .locals 2
    .param p1, "filter"    # Landroid/content/pm/parsing/component/ParsedIntentInfo;

    .line 127
    iget-object v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mHosts:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getHostsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 129
    return-void
.end method

.method public getFilters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHostsString()Ljava/lang/String;
    .locals 5

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mHosts:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 95
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 96
    if-lez v2, :cond_0

    .line 97
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mHosts:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 101
    .local v3, "host":Ljava/lang/String;
    const-string v4, "*."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .end local v3    # "host":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mState:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mUserId:I

    return v0
.end method

.method public isVerificationComplete()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mVerificationComplete:Z

    return v0
.end method

.method public isVerified()Z
    .locals 3

    .line 78
    iget-boolean v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mVerificationComplete:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 79
    iget v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 81
    :cond_1
    return v1
.end method

.method public setPendingState()V
    .locals 1

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/IntentFilterVerificationState;->setState(I)V

    .line 67
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 54
    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iput p1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mState:I

    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mState:I

    .line 59
    :goto_1
    return-void
.end method

.method public setVerifierResponse(II)Z
    .locals 3
    .param p1, "callerUid"    # I
    .param p2, "code"    # I

    .line 110
    iget v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mRequiredVerifierUid:I

    if-ne v0, p1, :cond_2

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "state":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 113
    const/4 v0, 0x2

    goto :goto_0

    .line 114
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 115
    const/4 v0, 0x3

    .line 117
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mVerificationComplete:Z

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/server/pm/IntentFilterVerificationState;->setState(I)V

    .line 119
    return v1

    .line 121
    .end local v0    # "state":I
    :cond_2
    sget-object v0, Lcom/android/server/pm/IntentFilterVerificationState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set verifier response with callerUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as required verifierUid is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mRequiredVerifierUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    return v0
.end method
