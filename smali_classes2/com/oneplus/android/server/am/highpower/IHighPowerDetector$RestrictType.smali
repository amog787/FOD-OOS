.class public final enum Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;
.super Ljava/lang/Enum;
.source "IHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RestrictType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

.field public static final enum FULLY:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

.field public static final enum NA:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

.field public static final enum PARTIAL:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 36
    new-instance v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    const-string v1, "NA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;->NA:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    .line 37
    new-instance v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    const-string v1, "PARTIAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;->PARTIAL:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    .line 38
    new-instance v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    const-string v1, "FULLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;->FULLY:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    .line 35
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    sget-object v5, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;->NA:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;->PARTIAL:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;->$VALUES:[Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;
    .locals 1

    .line 35
    sget-object v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;->$VALUES:[Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    invoke-virtual {v0}, [Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    return-object v0
.end method
