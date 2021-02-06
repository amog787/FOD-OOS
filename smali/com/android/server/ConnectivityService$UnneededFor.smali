.class final enum Lcom/android/server/ConnectivityService$UnneededFor;
.super Ljava/lang/Enum;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UnneededFor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/ConnectivityService$UnneededFor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ConnectivityService$UnneededFor;

.field public static final enum LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

.field public static final enum TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 406
    new-instance v0, Lcom/android/server/ConnectivityService$UnneededFor;

    const-string v1, "LINGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService$UnneededFor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    .line 407
    new-instance v0, Lcom/android/server/ConnectivityService$UnneededFor;

    const-string v1, "TEARDOWN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/ConnectivityService$UnneededFor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    .line 405
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/ConnectivityService$UnneededFor;

    sget-object v4, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/server/ConnectivityService$UnneededFor;->$VALUES:[Lcom/android/server/ConnectivityService$UnneededFor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 405
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ConnectivityService$UnneededFor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 405
    const-class v0, Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$UnneededFor;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ConnectivityService$UnneededFor;
    .locals 1

    .line 405
    sget-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->$VALUES:[Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-virtual {v0}, [Lcom/android/server/ConnectivityService$UnneededFor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ConnectivityService$UnneededFor;

    return-object v0
.end method
