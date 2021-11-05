.class public final enum Landroid/annotation/SystemApi$Client;
.super Ljava/lang/Enum;
.source "SystemApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Client"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/annotation/SystemApi$Client;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/annotation/SystemApi$Client;

.field public static final enum MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;

.field public static final enum PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;

.field public static final enum SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 51
    new-instance v0, Landroid/annotation/SystemApi$Client;

    const-string v1, "PRIVILEGED_APPS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/annotation/SystemApi$Client;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;

    .line 59
    new-instance v0, Landroid/annotation/SystemApi$Client;

    const-string v1, "MODULE_LIBRARIES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/annotation/SystemApi$Client;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;

    .line 66
    new-instance v0, Landroid/annotation/SystemApi$Client;

    const-string v1, "SYSTEM_SERVER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/annotation/SystemApi$Client;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;

    .line 46
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/annotation/SystemApi$Client;

    sget-object v5, Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;

    aput-object v5, v1, v2

    sget-object v2, Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Landroid/annotation/SystemApi$Client;->$VALUES:[Landroid/annotation/SystemApi$Client;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/annotation/SystemApi$Client;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    const-class v0, Landroid/annotation/SystemApi$Client;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/annotation/SystemApi$Client;

    return-object v0
.end method

.method public static values()[Landroid/annotation/SystemApi$Client;
    .locals 1

    .line 46
    sget-object v0, Landroid/annotation/SystemApi$Client;->$VALUES:[Landroid/annotation/SystemApi$Client;

    invoke-virtual {v0}, [Landroid/annotation/SystemApi$Client;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/SystemApi$Client;

    return-object v0
.end method
