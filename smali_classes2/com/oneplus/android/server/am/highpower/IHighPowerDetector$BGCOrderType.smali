.class public final enum Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;
.super Ljava/lang/Enum;
.source "IHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BGCOrderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

.field public static final enum ACC_BG:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

.field public static final enum ACC_TOP:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

.field public static final enum BG:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

.field public static final enum TOP:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 74
    new-instance v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    const-string v1, "BG"

    const/4 v2, 0x0

    const-string v3, "bg"

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->BG:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    .line 75
    new-instance v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    const-string v1, "TOP"

    const/4 v3, 0x1

    const-string v4, "top"

    invoke-direct {v0, v1, v3, v4}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->TOP:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    .line 76
    new-instance v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    const-string v1, "ACC_BG"

    const/4 v4, 0x2

    const-string v5, "acc_bg"

    invoke-direct {v0, v1, v4, v5}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ACC_BG:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    .line 77
    new-instance v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    const-string v1, "ACC_TOP"

    const/4 v5, 0x3

    const-string v6, "acc_top"

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ACC_TOP:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    .line 73
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    sget-object v6, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->BG:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->TOP:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ACC_BG:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->$VALUES:[Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput-object p3, p0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->text:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->values()[Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 86
    .local v3, "b":Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;
    iget-object v4, v3, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->text:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    return-object v3

    .line 85
    .end local v3    # "b":Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 73
    const-class v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;
    .locals 1

    .line 73
    sget-object v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->$VALUES:[Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    invoke-virtual {v0}, [Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->text:Ljava/lang/String;

    return-object v0
.end method
