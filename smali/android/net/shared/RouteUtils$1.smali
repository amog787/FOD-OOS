.class synthetic Landroid/net/shared/RouteUtils$1;
.super Ljava/lang/Object;
.source "RouteUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/shared/RouteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$net$shared$RouteUtils$ModifyOperation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 100
    invoke-static {}, Landroid/net/shared/RouteUtils$ModifyOperation;->values()[Landroid/net/shared/RouteUtils$ModifyOperation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/net/shared/RouteUtils$1;->$SwitchMap$android$net$shared$RouteUtils$ModifyOperation:[I

    :try_start_0
    sget-object v1, Landroid/net/shared/RouteUtils$ModifyOperation;->ADD:Landroid/net/shared/RouteUtils$ModifyOperation;

    invoke-virtual {v1}, Landroid/net/shared/RouteUtils$ModifyOperation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Landroid/net/shared/RouteUtils$1;->$SwitchMap$android$net$shared$RouteUtils$ModifyOperation:[I

    sget-object v1, Landroid/net/shared/RouteUtils$ModifyOperation;->REMOVE:Landroid/net/shared/RouteUtils$ModifyOperation;

    invoke-virtual {v1}, Landroid/net/shared/RouteUtils$ModifyOperation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
