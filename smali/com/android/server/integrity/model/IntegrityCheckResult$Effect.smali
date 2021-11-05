.class public final enum Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;
.super Ljava/lang/Enum;
.source "IntegrityCheckResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/integrity/model/IntegrityCheckResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Effect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

.field public static final enum ALLOW:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

.field public static final enum DENY:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    const-string v1, "ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->ALLOW:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    .line 38
    new-instance v0, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    const-string v1, "DENY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->DENY:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    .line 36
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    sget-object v4, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->ALLOW:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->$VALUES:[Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    return-object v0
.end method

.method public static values()[Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;
    .locals 1

    .line 36
    sget-object v0, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->$VALUES:[Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    invoke-virtual {v0}, [Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    return-object v0
.end method
