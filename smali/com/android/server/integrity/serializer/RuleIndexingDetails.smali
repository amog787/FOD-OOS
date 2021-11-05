.class Lcom/android/server/integrity/serializer/RuleIndexingDetails;
.super Ljava/lang/Object;
.source "RuleIndexingDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/integrity/serializer/RuleIndexingDetails$IndexType;
    }
.end annotation


# static fields
.field static final APP_CERTIFICATE_INDEXED:I = 0x2

.field static final DEFAULT_RULE_KEY:Ljava/lang/String; = "N/A"

.field static final NOT_INDEXED:I = 0x0

.field static final PACKAGE_NAME_INDEXED:I = 0x1


# instance fields
.field private mIndexType:I

.field private mRuleKey:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "indexType"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mIndexType:I

    .line 50
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mRuleKey:Ljava/lang/String;

    .line 51
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "indexType"    # I
    .param p2, "ruleKey"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mIndexType:I

    .line 56
    iput-object p2, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mRuleKey:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getIndexType()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mIndexType:I

    return v0
.end method

.method public getRuleKey()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mRuleKey:Ljava/lang/String;

    return-object v0
.end method
