.class final enum Lcom/android/server/connectivity/Nat464Xlat$State;
.super Ljava/lang/Enum;
.source "Nat464Xlat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Nat464Xlat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/connectivity/Nat464Xlat$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/Nat464Xlat$State;

.field public static final enum DISCOVERING:Lcom/android/server/connectivity/Nat464Xlat$State;

.field public static final enum IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

.field public static final enum RUNNING:Lcom/android/server/connectivity/Nat464Xlat$State;

.field public static final enum STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 79
    new-instance v0, Lcom/android/server/connectivity/Nat464Xlat$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Nat464Xlat$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 80
    new-instance v0, Lcom/android/server/connectivity/Nat464Xlat$State;

    const-string v1, "DISCOVERING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/connectivity/Nat464Xlat$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->DISCOVERING:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 81
    new-instance v0, Lcom/android/server/connectivity/Nat464Xlat$State;

    const-string v1, "STARTING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/connectivity/Nat464Xlat$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 82
    new-instance v0, Lcom/android/server/connectivity/Nat464Xlat$State;

    const-string v1, "RUNNING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/connectivity/Nat464Xlat$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->RUNNING:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 78
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v6, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/server/connectivity/Nat464Xlat$State;->DISCOVERING:Lcom/android/server/connectivity/Nat464Xlat$State;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/connectivity/Nat464Xlat$State;->STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->$VALUES:[Lcom/android/server/connectivity/Nat464Xlat$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/Nat464Xlat$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 78
    const-class v0, Lcom/android/server/connectivity/Nat464Xlat$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Nat464Xlat$State;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/Nat464Xlat$State;
    .locals 1

    .line 78
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->$VALUES:[Lcom/android/server/connectivity/Nat464Xlat$State;

    invoke-virtual {v0}, [Lcom/android/server/connectivity/Nat464Xlat$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/Nat464Xlat$State;

    return-object v0
.end method
