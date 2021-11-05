.class public Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
.super Ljava/lang/Exception;
.source "InstantAppResolverConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstantAppResolverConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionException"
.end annotation


# static fields
.field public static final FAILURE_BIND:I = 0x1

.field public static final FAILURE_CALL:I = 0x2

.field public static final FAILURE_INTERRUPTED:I = 0x3


# instance fields
.field public final failure:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "_failure"    # I

    .line 299
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 300
    iput p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    .line 301
    return-void
.end method
