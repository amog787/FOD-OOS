.class public Lcom/android/server/integrity/model/RuleMetadata;
.super Ljava/lang/Object;
.source "RuleMetadata.java"


# instance fields
.field private final mRuleProvider:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ruleProvider"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/integrity/model/RuleMetadata;->mRuleProvider:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/android/server/integrity/model/RuleMetadata;->mVersion:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getRuleProvider()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/server/integrity/model/RuleMetadata;->mRuleProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/server/integrity/model/RuleMetadata;->mVersion:Ljava/lang/String;

    return-object v0
.end method
