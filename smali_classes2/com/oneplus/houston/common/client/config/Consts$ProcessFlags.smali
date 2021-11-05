.class public Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;
.super Ljava/lang/Object;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/common/client/config/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessFlags"
.end annotation


# static fields
.field public static FOREGROUND:I

.field public static RECENT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;->FOREGROUND:I

    .line 28
    const/4 v0, 0x2

    sput v0, Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;->RECENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
