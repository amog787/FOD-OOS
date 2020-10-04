.class synthetic Lcom/android/server/connectivity/NetworkAgentInfo$1;
.super Ljava/lang/Object;
.source "NetworkAgentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkAgentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$net$NetworkRequest$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 337
    invoke-static {}, Landroid/net/NetworkRequest$Type;->values()[Landroid/net/NetworkRequest$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/connectivity/NetworkAgentInfo$1;->$SwitchMap$android$net$NetworkRequest$Type:[I

    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/NetworkAgentInfo$1;->$SwitchMap$android$net$NetworkRequest$Type:[I

    sget-object v1, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Type;->ordinal()I

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
    sget-object v0, Lcom/android/server/connectivity/NetworkAgentInfo$1;->$SwitchMap$android$net$NetworkRequest$Type:[I

    sget-object v1, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/server/connectivity/NetworkAgentInfo$1;->$SwitchMap$android$net$NetworkRequest$Type:[I

    sget-object v1, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/server/connectivity/NetworkAgentInfo$1;->$SwitchMap$android$net$NetworkRequest$Type:[I

    sget-object v1, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/server/connectivity/NetworkAgentInfo$1;->$SwitchMap$android$net$NetworkRequest$Type:[I

    sget-object v1, Landroid/net/NetworkRequest$Type;->NONE:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    return-void
.end method
