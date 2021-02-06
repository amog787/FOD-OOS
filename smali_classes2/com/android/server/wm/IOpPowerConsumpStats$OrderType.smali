.class public final enum Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;
.super Ljava/lang/Enum;
.source "IOpPowerConsumpStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/IOpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

.field public static final enum BY_AC:Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

.field public static final enum BY_DROP:Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

.field public static final enum BY_RUN:Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 52
    new-instance v0, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    const-string v1, "BY_DROP"

    const/4 v2, 0x0

    const-string v3, "drop"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->BY_DROP:Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    .line 53
    new-instance v0, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    const-string v1, "BY_RUN"

    const/4 v3, 0x1

    const-string v4, "run"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->BY_RUN:Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    .line 54
    new-instance v0, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    const-string v1, "BY_AC"

    const/4 v4, 0x2

    const-string v5, "ac"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->BY_AC:Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    .line 51
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    sget-object v5, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->BY_DROP:Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->BY_RUN:Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->$VALUES:[Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

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

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->text:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->values()[Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 63
    .local v3, "b":Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;
    iget-object v4, v3, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->text:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    return-object v3

    .line 62
    .end local v3    # "b":Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 51
    const-class v0, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->$VALUES:[Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    invoke-virtual {v0}, [Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->text:Ljava/lang/String;

    return-object v0
.end method
