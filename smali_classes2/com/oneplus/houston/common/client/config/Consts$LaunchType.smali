.class public Lcom/oneplus/houston/common/client/config/Consts$LaunchType;
.super Ljava/lang/Object;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/common/client/config/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaunchType"
.end annotation


# static fields
.field public static final COLD_START:I = 0x1

.field public static final UNKOWN:I = 0x0

.field public static final WARM_START:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
